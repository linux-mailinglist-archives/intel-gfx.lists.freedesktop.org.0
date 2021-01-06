Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4263B2EB816
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 03:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D23289CF8;
	Wed,  6 Jan 2021 02:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 316E989CF6;
 Wed,  6 Jan 2021 02:38:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2AB5BA363B;
 Wed,  6 Jan 2021 02:38:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 Jan 2021 02:38:17 -0000
Message-ID: <160990069716.18708.3874405167453644162@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210105220541.23114-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210105220541.23114-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Break_out_of_the_lrc_layout_test_after_regis?=
 =?utf-8?q?ter_mismatch?=
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
Content-Type: multipart/mixed; boundary="===============1600114319=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1600114319==
Content-Type: multipart/alternative;
 boundary="===============7787906167452685406=="

--===============7787906167452685406==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Break out of the lrc layout test after register mismatch
URL   : https://patchwork.freedesktop.org/series/85524/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9547_full -> Patchwork_19261_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19261_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-hsw:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-hsw6/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][2] ([i915#280])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_params@no-bsd:
    - shard-iclb:         NOTRUN -> [SKIP][3] ([fdo#109283])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-tglb:         NOTRUN -> [SKIP][4] ([fdo#109283])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2389])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb4/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-hsw:          NOTRUN -> [FAIL][6] ([i915#2389]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-hsw7/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-iclb:         NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][8] ([i915#2658])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@gem_pread@exhaustion.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][9] ([fdo#109312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@readonly-mmap-unsync@wb:
    - shard-iclb:         NOTRUN -> [SKIP][10] ([i915#1704]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@gem_userptr_blits@readonly-mmap-unsync@wb.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([i915#2295])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([CI#80] / [i915#2295])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-glk6/igt@gem_workarounds@suspend-resume-context.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-glk6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([fdo#112306])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#112306])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#151])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl8/igt@i915_pm_rpm@system-suspend-execbuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#2521])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#1769])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110725] / [fdo#111614])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#111614])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#110723])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-iclb:         NOTRUN -> [FAIL][26] ([i915#1149] / [i915#315])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-hsw:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-hsw6/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109279])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][32] ([i915#54]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54]) +11 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111825]) +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109274] / [fdo#109278])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278]) +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +65 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#426])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109274])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#2598])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#2122])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109280]) +12 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#123])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#1188])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#1187])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109289]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([fdo#108145] / [i915#265])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111615])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#198])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@nouveau_crc@pipe-a-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2530])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@nouveau_crc@pipe-a-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109278] / [i915#2530])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@prime_nv_api@i915_self_import:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109291])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@prime_nv_api@i915_self_import.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109291])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@prime_nv_api@i915_self_import_to_different_fd.html

  * igt@sysfs_heartbeat_interval@precise@vcs0:
    - shard-hsw:          NOTRUN -> [SKIP][63] ([fdo#109271]) +158 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-hsw6/igt@sysfs_heartbeat_interval@precise@vcs0.html

  
#### Possible fixes ####

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-apl:          [SKIP][64] ([fdo#109271]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-none@vcs1}:
    - shard-kbl:          [FAIL][66] ([i915#2842]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html

  * {igt@gem_exec_fair@basic-pace@vecs0}:
    - shard-glk:          [FAIL][68] ([i915#2842]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-glk8/igt@gem_exec_fair@basic-pace@vecs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-iclb:         [FAIL][70] ([i915#2842]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html

  * {igt@gem_exec_schedule@u-fairslice@rcs0}:
    - shard-kbl:          [DMESG-WARN][72] ([i915#1610] / [i915#2803]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_mmap_gtt@big-bo:
    - shard-skl:          [DMESG-WARN][74] ([i915#1982]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@gem_mmap_gtt@big-bo.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl9/igt@gem_mmap_gtt@big-bo.html

  * igt@i915_selftest@live@execlists:
    - shard-iclb:         [INCOMPLETE][76] ([i915#1037] / [i915#2276]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb2/igt@i915_selftest@live@execlists.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][78] ([i915#54]) -> [PASS][79] +6 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][80] ([i915#2122]) -> [PASS][81] +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][82] ([fdo#109642] / [fdo#111068]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][84] ([fdo#109441]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb7/igt@kms_psr@psr2_basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-modeset-hang:
    - shard-kbl:          [DMESG-WARN][86] ([i915#165] / [i915#180]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-modeset-hang.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-modeset-hang.html

  * igt@prime_vgem@sync@rcs0:
    - shard-skl:          [INCOMPLETE][88] ([i915#409]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl7/igt@prime_vgem@sync@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl1/igt@prime_vgem@sync@rcs0.html

  * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:
    - shard-iclb:         [INCOMPLETE][90] -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb4/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled.html

  
#### Warnings ####

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-hsw:          [INCOMPLETE][92] -> [SKIP][93] ([fdo#109271])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-hsw7/igt@gem_exec_params@rsvd2-dirt.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-hsw7/igt@gem_exec_params@rsvd2-dirt.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [INCOMPLETE][94] ([i915#198]) -> [FAIL][95] ([i915#454])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][96] ([i915#2681] / [i915#2684]) -> [WARN][97] ([i915#2684])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][98], [FAIL][99]) ([i915#2295] / [i915#2426] / [i915#2505] / [i915#483]) -> ([FAIL][100], [FAIL][101]) ([i915#2295] / [i915#2426] / [i915#483])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl4/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl6/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-kbl4/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-kbl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
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
  [i915#1187]: https://gitlab.freedesktop.org/drm/intel/issues/1187
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1704]: https://gitlab.freedesktop.org/drm/intel/issues/1704
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2795]: https://gitlab.freedesktop.org/drm/intel/issues/2795
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2802]: https://gitlab.freedesktop.org/drm/intel/issues/2802
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9547 -> Patchwork_19261

  CI-20190529: 20190529
  CI_DRM_9547: 4f31e1ebafa4d59ce9692a7ef7f76e63e51f58d6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19261: 9d4dd47fe98be0b91df78301e49c6d5ab718deeb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/index.html

--===============7787906167452685406==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Break out of the lrc lay=
out test after register mismatch</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85524/">https://patchwork.freedesktop.org/series/85524/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19261/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19261/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9547_full -&gt; Patchwork_19261_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19261_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-hsw6/igt@gem_ctx_persistence@legacy-eng=
ines-persistence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@gem_ctx_sseu@mmap-args.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280">i=
915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@gem_exec_params@no-bsd.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109283"=
>fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@gem_exec_params@rsvd2-dirt.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb4/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-hsw7/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@gem_huc_copy@huc-copy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i=
915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@gem_pread@exhaustion.html">WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i9=
15#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@gem_softpin@evict-snoop-inter=
ruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync@wb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@gem_userptr_blits@readonly-mm=
ap-unsync@wb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1704">i915#1704</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9547/shard-apl4/igt@gem_workarounds@suspend-resume-context.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9261/shard-apl8/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915=
#2295</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9547/shard-glk6/igt@gem_workarounds@suspend-resume-context.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9261/shard-glk6/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80=
">CI#80</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/22=
95">i915#2295</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@gen9_exec_parse@allowed-all.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
2306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@gen9_exec_parse@secure-batche=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl8/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1926=
1/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19261/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i91=
5#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@kms_atomic_transition@plane-a=
ll-modeset-transition.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_big_fb@linear-8bpp-rotate=
-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_big_fb@x-tiled-16bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_chamelium@vga-edid-read.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_color@pipe-a-ctm-0-75.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/114=
9">i915#1149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/315">i915#315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_color_chamelium@pipe-a-ct=
m-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-hsw6/igt@kms_color_chamelium@pipe-d-gam=
ma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-6=
4x21-offscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19261/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_cursor_legacy@2x-long-fli=
p-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111825">fdo#111825</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_cursor_legacy@cursorb-vs-=
flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_cursor_legacy@pipe-d-sing=
le-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109278">fdo#109278</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-skl1/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/426">i915#426</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_flip@2x-flip-vs-rmfb-inte=
rruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19261/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19261/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +12 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
261/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123">i915#12=
3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-=
skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@kms_hdr@static-toggle-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/11=
87">i915#1187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@kms_pipe_b_c_ivb@from-pipe-c-=
to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19261/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@kms_plane_lowres@pipe-a-tilin=
g-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/sh=
ard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19261/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@nouveau_crc@pipe-a-ctx-flip-d=
etection.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@nouveau_crc@pipe-d-source-rg.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-tglb1/igt@prime_nv_api@i915_self_import=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-iclb1/igt@prime_nv_api@i915_self_import=
_to_different_fd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19261/shard-hsw6/igt@sysfs_heartbeat_interval@preci=
se@vcs0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +158 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19261/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none@vcs1}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
61/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vecs0}:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9547/shard-glk8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
61/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +2 similar =
issues</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9547/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
261/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@rcs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19261/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl1/igt@gem_mmap_gtt@big-bo.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/s=
hard-skl9/igt@gem_mmap_gtt@big-bo.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-iclb2/igt@i915_selftest@live@execlists.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#=
1037</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2276"=
>i915#2276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19261/shard-iclb1/igt@i915_selftest@live@execlists.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19261/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.ht=
ml">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19261/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-in=
terruptible@b-edp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-iclb8/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> /=
 <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#1110=
68</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19261/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-iclb7/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shard=
-iclb2/igt@kms_psr@psr2_basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-modeset-hang:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-modeset-hang.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/165">i915#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19261/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuatio=
n-modeset-hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl7/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/sh=
ard-skl1/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-iclb4/igt@syncobj_timeline@multi-wait-for-submit-unsubmi=
tted-signaled.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19261/shard-iclb2/igt@syncobj_timeline@multi-wa=
it-for-submit-unsubmitted-signaled.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-hsw7/igt@gem_exec_params@rsvd2-dirt.html">INCOMPLETE</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/=
shard-hsw7/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-skl1/igt@i915_pm_dc@dc6-psr.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19261/shar=
d-skl1/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9547/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19261/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9547/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/shard-kbl6/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19261/shard-kbl4/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19261/shard-kbl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9547 -&gt; Patchwork_19261</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9547: 4f31e1ebafa4d59ce9692a7ef7f76e63e51f58d6 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19261: 9d4dd47fe98be0b91df78301e49c6d5ab718deeb @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7787906167452685406==--

--===============1600114319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1600114319==--
