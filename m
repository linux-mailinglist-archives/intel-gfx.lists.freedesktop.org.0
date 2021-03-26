Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 677D234ACDD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:52:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00F96F421;
	Fri, 26 Mar 2021 16:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B75186F421;
 Fri, 26 Mar 2021 16:52:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF7DDA73C7;
 Fri, 26 Mar 2021 16:52:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 26 Mar 2021 16:52:30 -0000
Message-ID: <161677755074.10686.8332468078846337686@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210326105759.2387104-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210326105759.2387104-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Take_request_reference_before_arming_the_watchdog_time?=
 =?utf-8?q?r?=
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
Content-Type: multipart/mixed; boundary="===============0919361371=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0919361371==
Content-Type: multipart/alternative;
 boundary="===============1384221161327581170=="

--===============1384221161327581170==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Take request reference before arming the watchdog timer
URL   : https://patchwork.freedesktop.org/series/88478/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9905_full -> Patchwork_19865_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19865_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19865_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19865_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-snb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglb:         NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gem_userptr_blits@dmabuf-sync.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding}:
    - shard-tglb:         NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding.html

  
Known issues
------------

  Here are the changes found in Patchwork_19865_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][4] ([i915#1839])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@feature_discovery@display-4x.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2410])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@reset-stress:
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#2771])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl10/igt@gem_eio@reset-stress.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2849])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-glk:          [PASS][14] -> [INCOMPLETE][15] ([i915#2055])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-glk6/igt@gem_exec_flush@basic-wb-rw-default.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-glk3/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][16] ([i915#2389]) +5 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-snb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][17] ([i915#2658])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-snb6/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglb:         NOTRUN -> [WARN][18] ([i915#2658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#1699]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl3/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#3297])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen3_render_linear_blits:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#109289])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#112306])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][23] ([fdo#109271]) +363 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][24] ([i915#3296])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl2/igt@gen9_exec_parse@bb-large.html

  * igt@kms_addfb_basic@unused-offsets:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl1/igt@kms_addfb_basic@unused-offsets.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl2/igt@kms_addfb_basic@unused-offsets.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-snb:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-snb2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl2/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109279]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][34] ([i915#2346])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         NOTRUN -> [FAIL][35] ([i915#2346])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#533]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#52] / [i915#54]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          NOTRUN -> [INCOMPLETE][41] ([i915#146] / [i915#198])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][42] ([i915#2641])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2672])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#111825]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl1/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180] / [i915#533])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][48] ([i915#265])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([fdo#108145] / [i915#265]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#111615])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658]) +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658]) +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +205 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2437]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-d-ctx-flip-detection:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +68 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl1/igt@nouveau_crc@pipe-d-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-d-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#2530])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@nouveau_crc@pipe-d-source-outp-complete.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109291])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@prime_nv_pcopy@test_semaphore.html

  * igt@prime_vgem@sync@rcs0:
    - shard-tglb:         [PASS][63] -> [INCOMPLETE][64] ([i915#409])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb8/igt@prime_vgem@sync@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb3/igt@prime_vgem@sync@rcs0.html
    - shard-iclb:         [PASS][65] -> [INCOMPLETE][66] ([i915#409])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb3/igt@prime_vgem@sync@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb3/igt@prime_vgem@sync@rcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-skl:          [TIMEOUT][67] ([i915#3063]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl8/igt@gem_eio@in-flight-contexts-immediate.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl7/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][69] ([i915#2842]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-apl:          [FAIL][71] -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-apl1/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl6/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-skl:          [FAIL][73] ([i915#307]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl1/igt@gem_mmap_gtt@big-copy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl9/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [FAIL][75] ([i915#307]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-glk7/igt@gem_mmap_gtt@big-copy-odd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-glk9/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][77] ([i915#2428]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][79] ([i915#307]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [FAIL][81] ([i915#3160]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl6/igt@gem_mmap_offset@clear.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl8/igt@gem_mmap_offset@clear.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [TIMEOUT][83] ([i915#2795]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb5/igt@gem_vm_create@destroy-race.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb5/igt@gem_vm_create@destroy-race.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][85] ([i915#2346]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][87] ([i915#2122]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][89] ([i915#2598]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][91] ([i915#2122]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [INCOMPLETE][93] ([i915#123]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-y:
    - shard-tglb:         [INCOMPLETE][95] -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb7/igt@kms_plane_multiple@atomic-pipe-d-tiling-y.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-d-tiling-y.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [FAIL][99] ([fdo#103375]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][101] ([i915#1542]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl8/igt@perf@polling-parameterized.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl7/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][103] ([i915#1804] / [i915#2684]) -> [WARN][104] ([i915#2681] / [i915#2684])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][105] ([i915#658]) -> [SKIP][106] ([i915#2920])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][107] ([i915#2920]) -> [SKIP][108] ([i915#658])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][109], [FAIL][110]) ([i915#3002]) -> ([FAIL][111], [FAIL][112], [FAIL][113]) ([i915#180] / [i915#2505] / [i915#3002])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-kbl2/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-kbl1/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-kbl7/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-kbl1/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][114], [FAIL][115]) ([i915#3002]) -> ([FAIL][116], [FAIL][117], [FAIL][118]) ([i915#2426] / [i915#3002] / [i915#409])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb8/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb7/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb8/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb3/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][119], [FAIL][120]) ([i915#3002]) -> ([FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124]) ([fdo#109271] / [i915#1814] / [i915#3002] / [i915#62])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-apl6/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-apl1/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl2/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl3/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-apl8/igt@runner@aborted.html
    - shard-glk:          ([FAIL][125], [FAIL][126]) ([i915#3002] / [k.org#202321]) -> ([FAIL][127], [FAIL][128], [FAIL][129]) ([i915#2722] / [i915#3002] / [k.org#202321])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-glk6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-glk5/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-glk3/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-glk7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-glk8/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][130], [FAIL][131], [FAIL][132]) ([i915#1814] / [i915#2426] / [i915#3002]) -> ([FAIL][133], [FAIL][134], [FAIL][135]) ([i915#2426] / [i915#3002] / [i915#409])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb5/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([i915#1814] / [i915#2029] / [i915#3002]) -> ([FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1814] / [i915#2029] / [i915#2263] / [i915#3002])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl2/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl2/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl8/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl2/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl3/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl9/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl3/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl3/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2263]: https://gitlab.freedesktop.org/drm/intel/issues/2263
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2410]: https://gitlab.freedesk

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/index.html

--===============1384221161327581170==
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
<tr><td><b>Series:</b></td><td>drm/i915: Take request reference before armi=
ng the watchdog timer</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/88478/">https://patchwork.freedesktop.org/series/88478/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19865/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19865/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9905_full -&gt; Patchwork_19865_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19865_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19865_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19865_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-snb2/igt@gem_eio@unwedge-stress.html">F=
AIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gem_userptr_blits@dmabuf-sync=
.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding}:<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-=
32x10-sliding.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19865_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@feature_discovery@display-4x.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-mixed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1099">i915#1099</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1986=
5/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesk">i915#2410</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl10/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-skl2/=
igt@gem_eio@reset-stress.html">FAIL</a> ([i915#2771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/sh=
ard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1986=
5/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2=
849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-glk6/igt@gem_exec_flush@basic-wb-rw-default.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1986=
5/shard-glk3/igt@gem_exec_flush@basic-wb-rw-default.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-snb7/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19865/shard-snb6/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl3/igt@gem_userptr_blits@process-exit=
-mmap@wb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gem_userptr_blits@unsync-unma=
p-after-close.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gen3_render_linear_blits.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10928=
9">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@gen9_exec_parse@allowed-singl=
e.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-snb7/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +363 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl2/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl1/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/sh=
ard-skl2/igt@kms_addfb_basic@unused-offsets.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-snb2/igt@kms_chamelium@dp-crc-fast.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-skl2/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_color_chamelium@pipe-d-ct=
m-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109279">fdo#109279</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
865/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-skl8/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cur=
sor-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl3/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-render-ytile=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19865/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-render-yti=
led.html">FAIL</a> ([i915#52] / [i915#54]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/sh=
ard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp=
1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/146">i915#146</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-skl1/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19865/shard-apl3/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend-pipe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/180">i915#180</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19865/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@kms_plane_lowres@pipe-c-tilin=
g-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-skl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl8/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-ic=
lb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +205 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-apl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#2437]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-detection:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-skl1/igt@nouveau_crc@pipe-d-ctx-flip-de=
tection.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +68 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@nouveau_crc@pipe-d-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19865/shard-tglb2/igt@prime_nv_pcopy@test_semaphore=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9905/shard-tglb8/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb3/=
igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i915#409])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9905/shard-iclb3/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb3/=
igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i915#409])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl8/igt@gem_eio@in-flight-contexts-immediate.html">TIME=
OUT</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19865/shard-skl7/igt@gem_eio@in-flight-contexts-immediate.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19865/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-apl1/igt@gem_exec_reloc@basic-many-active@vecs0.html">FA=
IL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19865/shard-apl6/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl1/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1986=
5/shard-skl9/igt@gem_mmap_gtt@big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-glk7/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915=
#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19865/shard-glk9/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19865/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a>=
 ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19865/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl6/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#316=
0]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_198=
65/shard-skl8/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-tglb5/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> (=
[i915#2795]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19865/shard-tglb5/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i=
915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19865/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptibl=
e@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19865/shard-glk2/igt@kms_flip@2x-flip-vs=
-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> ([i915#2598]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19865/shard-tglb6/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19865/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-in=
terruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multi=
draw.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/123">i915#123</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19865/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p=
-pri-indfb-multidraw.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-y:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-tglb7/igt@kms_plane_multiple@atomic-pipe-d-tiling-y.html=
">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19865/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-d-tiling-y.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9865/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html"=
>FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375=
">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19865/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/=
shard-skl7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19865/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WAR=
N</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19865/shard-iclb2/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19865/shard-iclb1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>) ([i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19865/shard-kbl7/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/sha=
rd-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19865/shard-kbl6/igt@runner@aborted.html">FAI=
L</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i91=
5#180</a> / [i915#2505] / [i915#3002])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-iclb7/igt@runner@abo=
rted.html">FAIL</a>) ([i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19865/shard-iclb8/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/=
shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19865/shard-iclb4/igt@runner@aborted.html=
">FAIL</a>) ([i915#2426] / [i915#3002] / [i915#409])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>) ([i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19865/shard-apl1/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/sha=
rd-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19865/shard-apl3/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/=
shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#3002] / =
[i915#62])</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-glk5/igt@runner@abort=
ed.html">FAIL</a>) ([i915#3002] / [k.org#202321]) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-glk3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19865/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-glk8/igt@runner@=
aborted.html">FAIL</a>) ([i915#2722] / [i915#3002] / [k.org#202321])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-tglb7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9905/shard-tglb6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#2426]=
 / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19865/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/shard-tglb3/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19865/shard-tglb6/igt@runner@aborted.html">FAIL</a>) ([i915#=
2426] / [i915#3002] / [i915#409])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9905/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9905/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
05/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9905/shard-skl9/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">=
i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2029">i915#2029</a> / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19865/shard-skl2/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19865/s=
hard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19865/shard-skl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1986=
5/shard-skl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2263">i915#2263</a> / [i915#30=
02])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============1384221161327581170==--

--===============0919361371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0919361371==--
