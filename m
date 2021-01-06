Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 819ED2EB87F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 04:42:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA3489DAB;
	Wed,  6 Jan 2021 03:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32C9689DA8;
 Wed,  6 Jan 2021 03:42:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 243D8A47DF;
 Wed,  6 Jan 2021 03:42:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 06 Jan 2021 03:42:19 -0000
Message-ID: <160990453911.18708.17387318075904078580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU3Bs?=
 =?utf-8?q?it_GuC_submission_from_execlists_submission?=
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
Content-Type: multipart/mixed; boundary="===============0624101478=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0624101478==
Content-Type: multipart/alternative;
 boundary="===============1651326520367369141=="

--===============1651326520367369141==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Split GuC submission from execlists submission
URL   : https://patchwork.freedesktop.org/series/85528/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9547_full -> Patchwork_19262_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19262_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-hsw:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-hsw4/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_ctx_persistence@replace@rcs0:
    - shard-skl:          [PASS][2] -> [FAIL][3] ([i915#2410])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl2/igt@gem_ctx_persistence@replace@rcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl1/igt@gem_ctx_persistence@replace@rcs0.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][4] ([i915#280])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_params@no-bsd:
    - shard-iclb:         NOTRUN -> [SKIP][5] ([fdo#109283])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-tglb:         NOTRUN -> [SKIP][6] ([fdo#109283])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-hsw:          NOTRUN -> [FAIL][7] ([i915#2389]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-hsw7/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2389])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_huc_copy@huc-copy:
    - shard-iclb:         NOTRUN -> [SKIP][11] ([i915#2190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][12] ([i915#2658])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@gem_pread@exhaustion.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([fdo#109312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@readonly-mmap-unsync@wb:
    - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#1704]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@gem_userptr_blits@readonly-mmap-unsync@wb.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([fdo#112306])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#112306])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@gen9_exec_parse@secure-batches.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#2521])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#1769])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([fdo#110725] / [fdo#111614])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#111614])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110723])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl1/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-iclb:         NOTRUN -> [FAIL][25] ([i915#1149] / [i915#315])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl2/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-hsw:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-hsw4/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109279])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          NOTRUN -> [FAIL][31] ([i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#54]) +7 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111825]) +7 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109274] / [fdo#109278])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278]) +6 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +66 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#426])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109274])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109280]) +12 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +11 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([i915#1187])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109289]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([fdo#108145] / [i915#265]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][46] ([fdo#108145] / [i915#265])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#111615])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#109441]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109441]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][51] -> [INCOMPLETE][52] ([i915#198])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@nouveau_crc@pipe-a-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#2530])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@nouveau_crc@pipe-a-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278] / [i915#2530])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@prime_nv_api@i915_self_import:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109291])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@prime_nv_api@i915_self_import.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109291])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@prime_nv_api@i915_self_import_to_different_fd.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [PASS][57] -> [INCOMPLETE][58] ([i915#409])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb5/igt@prime_vgem@sync@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb1/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_heartbeat_interval@precise@vcs0:
    - shard-hsw:          NOTRUN -> [SKIP][59] ([fdo#109271]) +239 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-hsw4/igt@sysfs_heartbeat_interval@precise@vcs0.html

  
#### Possible fixes ####

  * {igt@gem_exec_balancer@fairslice}:
    - shard-tglb:         [FAIL][60] ([i915#2802]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-tglb2/igt@gem_exec_balancer@fairslice.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb1/igt@gem_exec_balancer@fairslice.html

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-apl:          [SKIP][62] ([fdo#109271]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-apl4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-pace@rcs0}:
    - shard-iclb:         [FAIL][64] ([i915#2842]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html

  * {igt@gem_exec_fair@basic-pace@vecs0}:
    - shard-glk:          [FAIL][66] ([i915#2842]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-glk8/igt@gem_exec_fair@basic-pace@vecs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html

  * {igt@gem_exec_schedule@u-fairslice@rcs0}:
    - shard-kbl:          [DMESG-WARN][68] ([i915#1610] / [i915#2803]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_mmap_gtt@big-bo:
    - shard-skl:          [DMESG-WARN][70] ([i915#1982]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@gem_mmap_gtt@big-bo.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl5/igt@gem_mmap_gtt@big-bo.html

  * {igt@gem_vm_create@destroy-race}:
    - shard-tglb:         [INCOMPLETE][72] -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-tglb5/igt@gem_vm_create@destroy-race.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@gem_vm_create@destroy-race.html

  * igt@i915_selftest@live@execlists:
    - shard-iclb:         [INCOMPLETE][74] ([i915#1037] / [i915#2276]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb2/igt@i915_selftest@live@execlists.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [DMESG-FAIL][76] ([i915#2291]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-glk6/igt@i915_selftest@live@gt_heartbeat.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-glk4/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][78] ([i915#54]) -> [PASS][79] +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][80] ([i915#1188]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][82] ([fdo#108145] / [i915#265]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][84] ([fdo#109642] / [fdo#111068]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][86] ([fdo#109441]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-b-ts-continuation-modeset-hang:
    - shard-kbl:          [DMESG-WARN][88] ([i915#165] / [i915#180]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-modeset-hang.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-modeset-hang.html

  * igt@prime_vgem@sync@rcs0:
    - shard-skl:          [INCOMPLETE][90] ([i915#409]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl7/igt@prime_vgem@sync@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl2/igt@prime_vgem@sync@rcs0.html

  * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:
    - shard-iclb:         [INCOMPLETE][92] -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb4/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [INCOMPLETE][94] ([i915#198]) -> [FAIL][95] ([i915#454])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][96], [FAIL][97]) ([i915#2295] / [i915#2426] / [i915#2505] / [i915#483]) -> [FAIL][98] ([i915#2295] / [i915#483])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl4/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl6/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         [FAIL][99] ([i915#2295] / [i915#2724] / [i915#483]) -> ([FAIL][100], [FAIL][101]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#409] / [i915#483])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb5/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb1/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb1/igt@runner@aborted.html
    - shard-apl:          [FAIL][102] ([i915#2295]) -> ([FAIL][103], [FAIL][104]) ([i915#1610] / [i915#2295] / [i915#2426])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-apl7/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-apl7/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-apl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

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
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1187]: https://gitlab.freedesktop.org/drm/intel/issues/1187
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1704]: https://gitlab.freedesktop.org/drm/intel/issues/1704
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2802]: https://gitlab.freedesktop.org/drm/intel/issues/2802
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2804]: https://gitlab.freedesktop.org/drm/intel/issues/2804
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9547 -> Patchwork_19262

  CI-20190529: 20190529
  CI_DRM_9547: 4f31e1ebafa4d59ce9692a7ef7f76e63e51f58d6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19262: 95e1c72faff4fcd33f689e4379ea66a3e91fa5ba @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/index.html

--===============1651326520367369141==
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
<tr><td><b>Series:</b></td><td>Split GuC submission from execlists submission</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85528/">https://patchwork.freedesktop.org/series/85528/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9547_full -&gt; Patchwork_19262_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19262_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-hsw4/igt@gem_ctx_persistence@legacy-engines-persistence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@replace@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl2/igt@gem_ctx_persistence@replace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl1/igt@gem_ctx_persistence@replace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#2410</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@gem_exec_params@no-bsd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-hsw7/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync@wb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@gem_userptr_blits@readonly-mmap-unsync@wb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1704">i915#1704</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@kms_atomic_transition@plane-all-modeset-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110725">fdo#110725</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl1/igt@kms_chamelium@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_color@pipe-a-ctm-0-75.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/315">i915#315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-0-5.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl2/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-hsw4/igt@kms_color_chamelium@pipe-d-gamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279">fdo#109279</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_cursor_legacy@pipe-d-single-move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +66 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_dp_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/426">i915#426</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1187">i915#1187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-yf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@nouveau_crc@pipe-a-ctx-flip-detection.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@nouveau_crc@pipe-d-source-rg.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@prime_nv_api@i915_self_import.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@prime_nv_api@i915_self_import_to_different_fd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb5/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb1/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-hsw4/igt@sysfs_heartbeat_interval@precise@vcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +239 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_balancer@fairslice}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-tglb2/igt@gem_exec_balancer@fairslice.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2802">i915#2802</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb1/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-apl4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@rcs0}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vecs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-glk8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@rcs0}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@gem_mmap_gtt@big-bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl5/igt@gem_mmap_gtt@big-bo.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_vm_create@destroy-race}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-tglb5/igt@gem_vm_create@destroy-race.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-tglb5/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb8/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-glk6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-glk4/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb8/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-modeset-hang:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-modeset-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-modeset-hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl7/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl2/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb4/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb4/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@i915_pm_dc@dc6-psr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-skl6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-kbl4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-iclb1/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-apl7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9547 -&gt; Patchwork_19262</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9547: 4f31e1ebafa4d59ce9692a7ef7f76e63e51f58d6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19262: 95e1c72faff4fcd33f689e4379ea66a3e91fa5ba @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1651326520367369141==--

--===============0624101478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0624101478==--
