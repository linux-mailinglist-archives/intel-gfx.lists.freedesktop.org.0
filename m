Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0C23E4C07
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 20:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC8889B5F;
	Mon,  9 Aug 2021 18:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DCD389B5F;
 Mon,  9 Aug 2021 18:21:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 460F8A8836;
 Mon,  9 Aug 2021 18:21:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5305502418755532745=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Aug 2021 18:21:36 -0000
Message-ID: <162853329628.2458.11386819903811316911@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210802133551.1904964-1-imre.deak@intel.com>
In-Reply-To: <20210802133551.1904964-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZmJk?=
 =?utf-8?q?ev/efifb=3A_Release_PCI_device=27s_runtime_PM_ref_during_FB_des?=
 =?utf-8?q?troy_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5305502418755532745==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: fbdev/efifb: Release PCI device's runtime PM ref during FB destroy (rev2)
URL   : https://patchwork.freedesktop.org/series/93307/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10460_full -> Patchwork_20786_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20786_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_pm_rpm@gem-mmap-type@fixed}:
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb5/igt@i915_pm_rpm@gem-mmap-type@fixed.html
    - shard-iclb:         NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@fixed.html

  
Known issues
------------

  Here are the changes found in Patchwork_20786_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          NOTRUN -> [FAIL][4] ([i915#2846])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2846])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#2849])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][13] ([i915#2658])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb6/igt@gem_pwrite@basic-exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl4/igt@gem_softpin@noreloc-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl6/igt@gem_softpin@noreloc-s3.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271]) +167 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][18] -> [INCOMPLETE][19] ([i915#3921])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3777]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3777]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +6 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3886]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3886]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +50 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_color@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][30] ([i915#1319])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#2346])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#1888] / [i915#3451])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_dsc@basic-dsc-enable@edp-1-pipe-c:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][35] ([i915#1226]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@kms_dsc@basic-dsc-enable@edp-1-pipe-c.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2122])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +97 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271]) +143 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#533])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#533])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][42] ([i915#265])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][43] ([fdo#108145] / [i915#265]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][44] ([fdo#108145] / [i915#265])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#658]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#658]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb6/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2437])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#1722])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl2/igt@perf@polling-small-buf.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl8/igt@perf@polling-small-buf.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          NOTRUN -> [DMESG-WARN][52] ([i915#1982] / [i915#262])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@perf_pmu@module-unload.html

  * igt@sysfs_clients@fair-1:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2994])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2994])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@sema-10:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2994])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl3/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][56] ([i915#658]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb4/igt@feature_discovery@psr2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][58] ([i915#2410]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][60] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][62] ([i915#2842]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk9/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][64] ([i915#2842]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][66] ([i915#2842] / [i915#3468]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [FAIL][68] ([i915#2842]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - {shard-rkl}:        [FAIL][70] ([i915#2842]) -> [PASS][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][72] ([i915#118] / [i915#95]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk1/igt@gem_exec_whisper@basic-contexts-all.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [FAIL][74] ([i915#2428]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_offset@clear:
    - {shard-rkl}:        [FAIL][76] ([i915#3160]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-1/igt@gem_mmap_offset@clear.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-5/igt@gem_mmap_offset@clear.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][80] ([i915#198] / [i915#2405]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl3/igt@gem_workarounds@suspend-resume-fd.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_backlight@fade_with_dpms:
    - shard-tglb:         [SKIP][82] ([i915#1311] / [i915#579]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb8/igt@i915_pm_backlight@fade_with_dpms.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb7/igt@i915_pm_backlight@fade_with_dpms.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [FAIL][84] ([i915#545]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl10/igt@i915_pm_dc@dc5-dpms.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-skl:          [SKIP][86] ([fdo#109271]) -> [PASS][87] +20 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl9/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-skl:          [FAIL][88] ([i915#579]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl6/igt@i915_pm_rpm@basic-rte.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl5/igt@i915_pm_rpm@basic-rte.html
    - shard-kbl:          [FAIL][90] ([i915#579]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl6/igt@i915_pm_rpm@basic-rte.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@i915_pm_rpm@basic-rte.html
    - shard-apl:          [FAIL][92] ([i915#579]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl6/igt@i915_pm_rpm@basic-rte.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@i915_pm_rpm@basic-rte.html
    - shard-glk:          [FAIL][94] ([i915#579]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk9/igt@i915_pm_rpm@basic-rte.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk1/igt@i915_pm_rpm@basic-rte.html
    - shard-iclb:         [FAIL][96] ([i915#579]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb1/igt@i915_pm_rpm@basic-rte.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb1/igt@i915_pm_rpm@basic-rte.html
    - shard-tglb:         [FAIL][98] ([i915#579]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb7/igt@i915_pm_rpm@basic-rte.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb2/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-glk:          [SKIP][100] ([fdo#109271]) -> [PASS][101] +30 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress.html
    - {shard-rkl}:        [SKIP][102] ([i915#3844] / [i915#579]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-iclb:         [SKIP][104] ([i915#579]) -> [PASS][105] +25 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb2/igt@i915_pm_rpm@gem-idle.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb6/igt@i915_pm_rpm@gem-idle.html

  * igt@i915_pm_rpm@i2c:
    - shard-tglb:         [SKIP][106] ([i915#579]) -> [PASS][107] +24 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb1/igt@i915_pm_rpm@i2c.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb8/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [SKIP][108] ([fdo#109271]) -> [PASS][109] +28 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl1/igt@i915_pm_rpm@system-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl6/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +4 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][112] ([i915#79]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][114] ([i915#79]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][116] ([i915#1188]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][118] ([fdo#108145] / [i915#265]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][120] ([fdo#109441]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:
    - shard-tglb:         [SKIP][122] ([i915#3841]) -> [PASS][123] +7 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb8/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
    - {shard-rkl}:        [SKIP][124] ([i915#3841]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:
    - shard-apl:          [SKIP][126] ([fdo#109271]) -> [PASS][127] +17 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html
    - shard-iclb:         [SKIP][128] ([fdo#109278]) -> [PASS][129] +5 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb6/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb4/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-tglb:         [SKIP][130] ([fdo#111719]) -> [PASS][131] +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb7/igt@perf_pmu@rc6-runtime-pm.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb6/igt@perf_pmu@rc6-runtime-pm.html

  * igt@perf_pmu@rc6-runtime-pm-long:
    - {shard-rkl}:        [SKIP][132] ([i915#293]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm-long.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm-long.html
    - shard-iclb:         [SKIP][134] ([i915#293]) -> [PASS][135] +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb3/igt@perf_pmu@rc6-runtime-pm-long.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb1/igt@perf_pmu@rc6-runtime-pm-long.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          [FAIL][136] ([i915#545]) -> [FAIL][137] ([i915#454])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][138] ([i915#2684]) -> [WARN][139] ([i915#1804] / [i915#2684])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         [SKIP][140] ([i915#579]) -> [SKIP][141] ([fdo#111644] / [i915#1397] / [i915#2411]) +3 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-iclb:         [SKIP][142] ([i915#579]) -> [SKIP][143] ([fdo#109293] / [fdo#109506]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
    - shard-tglb:         [SKIP][144] ([i915#579]) -> [SKIP][145] ([fdo#109506] / [i915#2411]) +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         [SKIP][146] ([i915#579]) -> [SKIP][147] ([fdo#110892]) +4 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb1/igt@i915_pm_rpm@modeset-non-lpsp.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][148] ([i915#658]) -> [SKIP][149] ([i915#2920]) +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][150] ([i915#2920]) -> [SKIP][151] ([i915#658])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -> ([FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#92])
   [152]: https:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/index.html

--===============5305502418755532745==
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
<tr><td><b>Series:</b></td><td>fbdev/efifb: Release PCI device&#39;s runtime PM ref during FB destroy (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93307/">https://patchwork.freedesktop.org/series/93307/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10460_full -&gt; Patchwork_20786_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20786_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@i915_pm_rpm@gem-mmap-type@fixed}:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb5/igt@i915_pm_rpm@gem-mmap-type@fixed.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@fixed.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20786_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl4/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl6/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@gen7_exec_parse@basic-offset.html">SKIP</a> ([fdo#109271]) +167 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_color@pipe-d-ctm-negative.html">SKIP</a> ([fdo#109271]) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html">FAIL</a> ([i915#1888] / [i915#3451])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@basic-dsc-enable@edp-1-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@kms_dsc@basic-dsc-enable@edp-1-pipe-c.html">DMESG-WARN</a> ([i915#1226]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +97 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109271]) +143 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb6/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl2/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl8/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1982] / [i915#262])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl3/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb4/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk9/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842] / [i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk1/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#2428]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-1/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-5/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl1/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl7/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl3/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> ([i915#198] / [i915#2405]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_dpms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb8/igt@i915_pm_backlight@fade_with_dpms.html">SKIP</a> ([i915#1311] / [i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb7/igt@i915_pm_backlight@fade_with_dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl10/igt@i915_pm_dc@dc5-dpms.html">FAIL</a> ([i915#545]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl2/igt@i915_pm_dc@dc5-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl1/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl9/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl6/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl5/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl6/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl6/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk9/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk1/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb1/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb1/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb7/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a> +30 similar issues</p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a> ([i915#3844] / [i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb2/igt@i915_pm_rpm@gem-idle.html">SKIP</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb6/igt@i915_pm_rpm@gem-idle.html">PASS</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb1/igt@i915_pm_rpm@i2c.html">SKIP</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb8/igt@i915_pm_rpm@i2c.html">PASS</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl1/igt@i915_pm_rpm@system-suspend.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl6/igt@i915_pm_rpm@system-suspend.html">PASS</a> +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb8/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html">SKIP</a> ([i915#3841]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html">PASS</a> +7 similar issues</p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html">SKIP</a> ([i915#3841]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html">PASS</a> +17 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb6/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html">SKIP</a> ([fdo#109278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb4/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html">PASS</a> +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb7/igt@perf_pmu@rc6-runtime-pm.html">SKIP</a> ([fdo#111719]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb6/igt@perf_pmu@rc6-runtime-pm.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm-long:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm-long.html">SKIP</a> ([i915#293]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm-long.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb3/igt@perf_pmu@rc6-runtime-pm-long.html">SKIP</a> ([i915#293]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb1/igt@perf_pmu@rc6-runtime-pm-long.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#545]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([fdo#109293] / [fdo#109506]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-tglb8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-tglb7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([fdo#109506] / [i915#2411]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb1/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([fdo#110892]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href="https:">FAIL</a>, [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -&gt; ([FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#92])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5305502418755532745==--
