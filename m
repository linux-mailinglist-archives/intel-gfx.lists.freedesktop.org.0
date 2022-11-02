Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F30615F28
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 10:13:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEBE10E45C;
	Wed,  2 Nov 2022 09:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52B5D10E454;
 Wed,  2 Nov 2022 09:13:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BD2DAADDC;
 Wed,  2 Nov 2022 09:13:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7311425427584728481=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 02 Nov 2022 09:13:00 -0000
Message-ID: <166738038027.23607.14983010221837744246@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221101235053.1650364-1-John.C.Harrison@Intel.com>
In-Reply-To: <20221101235053.1650364-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_wait_forever_in_drop=5Fcaches?=
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

--===============7311425427584728481==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Don't wait forever in drop_caches
URL   : https://patchwork.freedesktop.org/series/110395/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12329_full -> Patchwork_110395v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110395v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110395v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110395v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@deep@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl4/igt@gem_exec_schedule@deep@vcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_110395v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([i915#4525]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#2842]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-tglb:         NOTRUN -> [SKIP][6] ([i915#4270])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][7] ([i915#3297])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#5566] / [i915#716])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([i915#2527] / [i915#2856])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_module_load@resize-bar:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([i915#6412])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([i915#4281])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [PASS][14] -> [FAIL][15] ([i915#6537])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-apl1/igt@i915_pm_rps@engine-order.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl6/igt@i915_pm_rps@engine-order.html

  * igt@i915_query@hwconfig_table:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#6245])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@i915_query@hwconfig_table.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#5286]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#111615])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3886]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3886]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#3689]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl1/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#2346])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#426])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271]) +20 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl1/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [INCOMPLETE][29] ([i915#6614])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#2672]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#2587] / [i915#2672])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([i915#3555])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#2672] / [i915#3555])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +69 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#6497]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#5235]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([i915#5235]) +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb3/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#2920])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#658])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109642] / [fdo#111068] / [i915#658])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#7037])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#3555]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#109309])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_tv_load_detect@load-detect.html

  * igt@perf_pmu@interrupts:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#7318])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-skl7/igt@perf_pmu@interrupts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl6/igt@perf_pmu@interrupts.html

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - shard-skl:          [PASS][51] -> [DMESG-WARN][52] ([i915#1982])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-skl6/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl9/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2994])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][54] ([i915#4525]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb3/igt@gem_exec_balancer@parallel.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@gem_exec_balancer@parallel.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][56] ([i915#2190]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][58] ([i915#3989] / [i915#454]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [WARN][60] ([i915#1804]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-b-hdmi-a-1:
    - shard-glk:          [FAIL][62] -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-glk5/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-b-hdmi-a-1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-glk3/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-b-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
    - shard-apl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][66] ([i915#79]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [DMESG-WARN][68] ([i915#1982]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [SKIP][70] ([i915#5235]) -> [PASS][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][74] ([i915#4525]) -> [FAIL][75] ([i915#6117])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][76] ([i915#454]) -> [FAIL][77] ([i915#3989] / [i915#454]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-skl4/igt@i915_pm_dc@dc6-dpms.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-iclb:         [WARN][78] ([i915#2684]) -> [FAIL][79] ([i915#2684])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][80] ([i915#7084]) -> [FAIL][81] ([i915#3524])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-skl6/igt@i915_pm_sseu@full-enable.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl6/igt@i915_pm_sseu@full-enable.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][82] ([i915#2920]) -> [SKIP][83] ([i915#658])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][84] ([i915#658]) -> [SKIP][85] ([i915#2920]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][86] ([fdo#111068] / [i915#658]) -> [SKIP][87] ([i915#2920]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][88], [FAIL][89], [FAIL][90]) ([i915#3002] / [i915#4312]) -> ([FAIL][91], [FAIL][92], [FAIL][93]) ([fdo#109271] / [i915#3002] / [i915#4312])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-apl3/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-apl7/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-apl8/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl3/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl6/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl3/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3524]: https://gitlab.freedesktop.org/drm/intel/issues/3524
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6614]: https://gitlab.freedesktop.org/drm/intel/issues/6614
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7084]: https://gitlab.freedesktop.org/drm/intel/issues/7084
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12329 -> Patchwork_110395v1

  CI-20190529: 20190529
  CI_DRM_12329: aeb0d740b4011006d27dc0ac4d5c2ae7c6da4066 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7037: 6a25c53624502fc85cec3cf0a0bf244a2346e30f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110395v1: aeb0d740b4011006d27dc0ac4d5c2ae7c6da4066 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/index.html

--===============7311425427584728481==
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
<tr><td><b>Series:</b></td><td>drm/i915: Don&#39;t wait forever in drop_cac=
hes</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110395/">https://patchwork.freedesktop.org/series/110395/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110395v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110395v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12329_full -&gt; Patchwork_110395v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110395v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_110395v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
110395v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_schedule@deep@vcs0:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-skl4/igt@gem_exec_schedule@deep@vcs0=
.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110395v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10395v1/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1103=
95v1/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@gem_pxp@create-protected-b=
uffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-apl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v=
1/shard-apl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@gen9_exec_parse@batch-with=
out-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-ic=
lb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-apl1/igt@i915_pm_rps@engine-order.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shar=
d-apl6/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@i915_query@hwconfig_table.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_big_fb@4-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@kms_ccs@pipe-a-bad-aux-str=
ide-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-apl1/igt@kms_ccs@pipe-a-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_ccs@pipe-c-crc-sprite-=
planes-basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@kms_chamelium@hdmi-crc-mul=
tiple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-apl1/igt@kms_chamelium@hdmi-hpd-stor=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_chamelium@vga-frame-du=
mp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atom=
ic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110395v1/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-cr=
c-atomic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_dp_tiled_display@basic=
-test-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/426">i915#426</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-apl1/igt@kms_flip@2x-nonexisting-fb.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@kms_flip@flip-vs-suspend-i=
nterruptible@a-edp1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6614">i915#6614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp=
-xtile-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@kms=
_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default=
-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +69 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bcpsr-modesetfrombusy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6497">i915#6497</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb3/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@kms_plane_scaling@planes-dow=
nscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-apl1/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-iclb6/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7037">i915#7037</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1=
/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_setmode@clone-exclusiv=
e-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-tglb1/igt@kms_tv_load_detect@load-de=
tect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-skl7/igt@perf_pmu@interrupts.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl=
6/igt@perf_pmu@interrupts.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7318">i915#7318</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-skl6/igt@syncobj_timeline@wait-all-for-submit-delayed-s=
ubmit.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110395v1/shard-skl9/igt@syncobj_timeline@wait-all-for-submit-=
delayed-submit.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110395v1/shard-skl10/igt@sysfs_clients@split-25.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb3/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1103=
95v1/shard-iclb2/igt@gem_exec_balancer@parallel.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/=
shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11039=
5v1/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915=
#1804</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110395v1/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-glk5/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-b-h=
dmi-a-1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110395v1/shard-glk3/igt@kms_cursor_crc@cursor-onscreen-256x=
85@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110395v1/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-c-=
dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110395v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-i=
ndfb-draw-render.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-skl6/igt@kms_frontbuffe=
r_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard-iclb6/igt@kms_plan=
e_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb3/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0395v1/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110395v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-skl4/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/shard=
-skl1/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/454">i915#454</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110395v1/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-skl6/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7084">i915#7084</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v=
1/shard-skl6/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3524">i915#3524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_110395v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_110395v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12329/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110395v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12329/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12329/shard-apl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12329/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110395v1/sh=
ard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110395v1/shard-apl6/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0395v1/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</l=
i>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12329 -&gt; Patchwork_110395v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12329: aeb0d740b4011006d27dc0ac4d5c2ae7c6da4066 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7037: 6a25c53624502fc85cec3cf0a0bf244a2346e30f @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110395v1: aeb0d740b4011006d27dc0ac4d5c2ae7c6da4066 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7311425427584728481==--
