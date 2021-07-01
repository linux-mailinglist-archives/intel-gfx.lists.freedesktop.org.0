Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 113293B9240
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 15:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1486EB13;
	Thu,  1 Jul 2021 13:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46AB66EB13;
 Thu,  1 Jul 2021 13:27:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E167A41FB;
 Thu,  1 Jul 2021 13:27:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 01 Jul 2021 13:27:27 -0000
Message-ID: <162514604721.15052.11886497306294723235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701114234.3859716-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210701114234.3859716-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_TTM_offset_argument_to_mmap=2E?=
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
Content-Type: multipart/mixed; boundary="===============2048714026=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2048714026==
Content-Type: multipart/alternative;
 boundary="===============2105168143385003457=="

--===============2105168143385003457==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add TTM offset argument to mmap.
URL   : https://patchwork.freedesktop.org/series/92103/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10297_full -> Patchwork_20505_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20505_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20505_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20505_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk3/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_20505_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries_display_on:
    - shard-skl:          [PASS][4] -> [DMESG-WARN][5] ([i915#1982]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl9/igt@debugfs_test@read_all_entries_display_on.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl5/igt@debugfs_test@read_all_entries_display_on.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2410])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#2369] / [i915#3063] / [i915#3648])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([fdo#109313])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2428])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gen9_exec_parse@bb-large:
    - shard-skl:          NOTRUN -> [FAIL][16] ([i915#3296])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl1/igt@gen9_exec_parse@bb-large.html
    - shard-glk:          NOTRUN -> [FAIL][17] ([i915#3296])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk7/igt@gen9_exec_parse@bb-large.html
    - shard-kbl:          NOTRUN -> [FAIL][18] ([i915#3296])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-kbl7/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +111 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([fdo#109303])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          NOTRUN -> [DMESG-WARN][21] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-negative.html
    - shard-glk:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk7/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl2/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][27] ([i915#1319])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109278]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque:
    - shard-skl:          NOTRUN -> [FAIL][29] ([i915#3444])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-sliding:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271]) +27 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-32x32-sliding.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109274] / [fdo#109278])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2122])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#2546] / [i915#49])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +83 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-glk:          NOTRUN -> [SKIP][41] ([fdo#109271]) +36 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#49])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2546] / [i915#49]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109280]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#1188])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][50] ([i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][51] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#658])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#658]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][56] ([IGT#2])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl2/igt@kms_sysfs_edid_timing.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([i915#2530])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#1542])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk5/igt@perf@polling-parameterized.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk8/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#1722])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl1/igt@perf@polling-small-buf.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl4/igt@perf@polling-small-buf.html

  * igt@prime_nv_test@i915_import_pread_pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109291])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@prime_nv_test@i915_import_pread_pwrite.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2994]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl8/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2994])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl1/igt@sysfs_clients@fair-0.html
    - shard-glk:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2994])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk7/igt@sysfs_clients@fair-0.html
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2994])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-kbl7/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@recycle:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#2994])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][70] ([i915#2842]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-kbl:          [SKIP][72] ([fdo#109271]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-kbl1/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-iclb:         [DMESG-WARN][74] ([i915#3698]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb7/igt@i915_pm_dc@dc5-psr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-iclb:         [FAIL][76] -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb8/igt@i915_pm_rpm@modeset-lpsp.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][78] ([i915#2521]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][80] ([i915#118] / [i915#95]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [DMESG-WARN][82] ([i915#1982]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl2/igt@kms_color@pipe-a-ctm-0-25.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][84] ([i915#3444]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
    - shard-glk:          [FAIL][86] ([i915#79]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][88] ([i915#2122]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [FAIL][90] ([i915#49]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][92] ([i915#123]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][94] ([i915#1188]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][96] ([fdo#108145] / [i915#265]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][98] ([fdo#109441]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          [INCOMPLETE][100] ([i915#155] / [i915#794]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl3/igt@perf_pmu@rc6-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-kbl7/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][102] ([i915#2842]) -> [SKIP][103] ([fdo#109271])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][104] ([i915#658]) -> [SKIP][105] ([i915#588])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][106] ([i915#454]) -> [INCOMPLETE][107] ([i915#198])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl10/igt@i915_pm_dc@dc6-dpms.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][108] ([i915#2684]) -> [WARN][109] ([i915#1804] / [i915#2684])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][110] ([i915#1804] / [i915#2684]) -> [WARN][111] ([i915#2684])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-iclb:         [SKIP][112] ([i915#658]) -> [SKIP][113] ([i915#2920]) +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][114] ([i915#2920]) -> [SKIP][115] ([i915#658]) +3 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][116], [FAIL][117], [FAIL][118]) ([i915#3002] / [i915#3702]) -> ([FAIL][119], [FAIL][120]) ([i915#3002])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb2/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb6/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb3/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-iclb8/igt@runner@aborted.html
    - shard-apl:          ([FAIL][121], [FAIL][122], [FAIL][123]) ([i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][124], [FAIL][125], [FAIL][126]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#3363])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl2/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl3/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl1/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-apl2/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2428]: https://gitlab.freedesktop.org/drm/intel/issues/2428
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3296]: https://gitlab.freedesktop.org/drm/intel/issues/3296
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3444]: https://gitlab.freedesktop.org/drm/intel/issues/3444
  [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
  [i915#3698]: https://gitlab.freedesktop.org/drm/intel/issues/3698
  [i915#3702]: https://gitlab.freedesktop.org/drm/intel/issues/3702
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_10297 -> Patchwork_20505

  CI-20190529: 20190529
  CI_DRM_10297: 96c7ad60de68518bdcd0d0e6381a2359034a0226 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6125: 5bb62cb290fa32777934de4b39e107ccd282f7e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20505: 182e2988c2da3bcc301241b71dd643b3ce0e6b27 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/index.html

--===============2105168143385003457==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add TTM offset argument to mmap.</=
td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/92103/">https://patchwork.freedesktop.org/series/92103/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20505/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10297_full -&gt; Patchwork_20505_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20505_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20505_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20505_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk3/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_205=
05/shard-glk2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-async-flip.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20505_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries_display_on:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl9/igt@debugfs_test@read_all_entries_display_on.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20505/shard-skl5/igt@debugfs_test@read_all_entries_display_on.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982=
">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_205=
05/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#2410</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-tg=
lb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2369">i915#2369</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3648">i915#3648</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/s=
hard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-glk7/igt@gem_exec_fair@basic-pace-solo@=
rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@gem_exec_flush@basic-batch-ke=
rnel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505=
/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2428">i915#2428</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-skl1/igt@gen9_exec_parse@bb-large.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3296">=
i915#3296</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-glk7/igt@gen9_exec_parse@bb-large.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3296">=
i915#3296</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-kbl7/igt@gen9_exec_parse@bb-large.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3296">=
i915#3296</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-apl3/igt@i915_pm_rpm@modeset-pc8-reside=
ncy-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +111 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@i915_query@query-topology-kno=
wn-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_color@pipe-b-ctm-0-25.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@kms_color_chamelium@pipe-a-ct=
m-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-=
negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-glk7/igt@kms_color_chamelium@pipe-a-ctm-=
negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-skl2/igt@kms_color_chamelium@pipe-c-deg=
amma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-apl8/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-=
512x170-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109278">fdo#109278</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-a=
lpha-opaque.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3444">i915#3444</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-3=
2x32-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@kms_cursor_legacy@cursorb-vs-=
flipa-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20505/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/s=
hard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20505/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interr=
uptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20505/shard-glk3/igt@kms_frontbuffer_tracking@fb=
c-1p-primscrn-cur-indfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-glk7/igt@kms_frontbuffer_tracking@fbcps=
r-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a>) +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-i=
ndfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_frontbuffer_tracking@psr-=
1p-primscrn-pri-indfb-draw-render.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-s=
hrfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20505/shard-skl1/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard=
-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-skl5/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-apl2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505=
/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-apl2/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@nouveau_crc@pipe-c-source-out=
p-inactive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk5/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard=
-glk8/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl1/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-skl=
4/igt@perf@polling-small-buf.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_pread_pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@prime_nv_test@i915_import_pre=
ad_pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-apl8/igt@sysfs_clients@create.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-skl1/igt@sysfs_clients@fair-0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/29=
94">i915#2994</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-glk7/igt@sysfs_clients@fair-0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/29=
94">i915#2994</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20505/shard-kbl7/igt@sysfs_clients@fair-0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/29=
94">i915#2994</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-iclb1/igt@sysfs_clients@recycle.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994">i=
915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-apl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20505/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20505/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20505/shard-kbl1/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb7/igt@i915_pm_dc@dc5-psr.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3698">i915#3698</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/=
shard-iclb1/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb8/igt@i915_pm_rpm@modeset-lpsp.html">FAIL</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard-=
iclb6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521=
">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20505/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20505/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl2/igt@kms_color@pipe-a-ctm-0-25.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#198=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20505/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
444">i915#3444</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20505/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscr=
een.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20505/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20505/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-=
interruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-i=
ndfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20505/shard-skl8/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123=
">i915#123</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20505/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/sh=
ard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.ht=
ml">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108=
145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20505/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverag=
e-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505=
/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-kbl3/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_205=
05/shard-kbl7/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
505/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0505/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl10/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/shard=
-skl6/igt@i915_pm_dc@dc6-dpms.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#26=
84</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20505/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20505/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i91=
5#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20505/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2=
920</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20505/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-d=
mg-area-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/658">i915#658</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10297/shard-iclb6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3702">i915#3702</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/sh=
ard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20505/shard-iclb8/igt@runner@aborted.html">=
FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002"=
>i915#3002</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10297/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505/sh=
ard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20505/shard-apl1/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20505=
/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10297 -&gt; Patchwork_20505</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10297: 96c7ad60de68518bdcd0d0e6381a2359034a0226 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6125: 5bb62cb290fa32777934de4b39e107ccd282f7e8 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20505: 182e2988c2da3bcc301241b71dd643b3ce0e6b27 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2105168143385003457==--

--===============2048714026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2048714026==--
