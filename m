Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE53318E88
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 16:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347856EE4B;
	Thu, 11 Feb 2021 15:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82C7D6EE36;
 Thu, 11 Feb 2021 15:31:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BDBAA8831;
 Thu, 11 Feb 2021 15:31:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Feb 2021 15:31:40 -0000
Message-ID: <161305750049.27068.6883810861278379144@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210211113848.16341-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210211113848.16341-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgbGli?=
 =?utf-8?q?=3A_Add_a_YAML_emitter_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0792431520=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0792431520==
Content-Type: multipart/alternative;
 boundary="===============8840455327629487223=="

--===============8840455327629487223==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: lib: Add a YAML emitter (rev2)
URL   : https://patchwork.freedesktop.org/series/73433/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9761_full -> Patchwork_19662_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19662_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-hsw:          NOTRUN -> [WARN][1] ([i915#2283])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [PASS][3] -> [TIMEOUT][4] ([i915#2918])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-hsw:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-hsw7/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-skl:          NOTRUN -> [SKIP][6] ([fdo#109271]) +42 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl2/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_ctx_persistence@replace-hostile:
    - shard-hsw:          NOTRUN -> [SKIP][7] ([fdo#109271]) +59 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@gem_ctx_persistence@replace-hostile.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-kbl:          [PASS][10] -> [SKIP][11] ([fdo#109271])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl7/igt@gem_exec_fair@basic-flow@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#2842]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][16] ([i915#2389])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1610] / [i915#2803])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl5/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][19] ([i915#2658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl9/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#1699]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl2/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#112306])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@gen9_exec_parse@batch-without-end.html
    - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#112306])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#2527])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@gen9_exec_parse@bb-oversize.html
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#2527])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_hangman@engine-error@vecs0:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +38 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl1/igt@i915_hangman@engine-error@vecs0.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#1902])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@i915_pm_lpsp@screens-disabled.html
    - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#1902])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@i915_pm_lpsp@screens-disabled.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][28] -> [FAIL][29] ([i915#2597])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb7/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-hsw:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109279])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278] / [fdo#109279])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#54]) +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
    - shard-hsw:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#533]) +8 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#2598])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#198] / [i915#1982])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#2122]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#2587])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
    - shard-apl:          NOTRUN -> [FAIL][50] ([i915#2641])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#111825]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109280]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][55] ([i915#265])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-c-overlay-size-64:
    - shard-skl:          [PASS][58] -> [DMESG-WARN][59] ([i915#1982])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl10/igt@kms_plane_cursor@pipe-c-overlay-size-64.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl1/igt@kms_plane_cursor@pipe-c-overlay-size-64.html

  * igt@kms_plane_lowres@pipe-d-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109278]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@kms_plane_lowres@pipe-d-tiling-x.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2733])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@suspend:
    - shard-hsw:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#1072]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +54 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl1/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#1542])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@perf@blocking.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl9/igt@perf@blocking.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109291])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@prime_nv_api@i915_self_import_to_different_fd.html
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109291])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@prime_nv_api@i915_self_import_to_different_fd.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [TIMEOUT][72] ([i915#2918]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [DMESG-WARN][74] ([i915#1037] / [i915#180]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl6/igt@gem_eio@in-flight-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][76] ([i915#1037] / [i915#3063]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb6/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [TIMEOUT][78] ([i915#1037] / [i915#2481]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb8/igt@gem_eio@unwedge-stress.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][80] ([i915#2842]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-glk:          [FAIL][82] ([i915#2842]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [FAIL][84] ([i915#2842]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [SKIP][86] ([fdo#109271]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [FAIL][88] ([i915#2876]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][90] ([i915#2842]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [DMESG-WARN][92] ([i915#2803]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-tglb:         [DMESG-WARN][94] ([i915#2803]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_sync@basic-each:
    - shard-apl:          [INCOMPLETE][96] ([i915#2944]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl3/igt@gem_sync@basic-each.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl1/igt@gem_sync@basic-each.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [TIMEOUT][98] ([i915#2795]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb8/igt@gem_vm_create@destroy-race.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-tglb2/igt@gem_vm_create@destroy-race.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][100] ([i915#1436] / [i915#716]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][102] ([i915#146] / [i915#151]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][104] ([i915#155] / [i915#636]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl6/igt@i915_suspend@forcewake.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [FAIL][106] ([i915#54]) -> [PASS][107] +5 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][108] ([i915#2346]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [DMESG-WARN][110] ([i915#1982]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][112] ([i915#180]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          [FAIL][114] ([i915#2122]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [FAIL][116] ([i915#79]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_hdr@bpc-switch:
    - shard-kbl:          [DMESG-WARN][118] ([i915#180] / [i915#78]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@kms_hdr@bpc-switch.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][120] ([fdo#108145] / [i915#265]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][122] ([fdo#109441]) -> [PASS][123] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][124] ([i915#146] / [i915#198]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-iclb:         [FAIL][126] ([i915#3028]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@sysfs_clients@recycle-many.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@sysfs_clients@recycle-many.html
    - shard-skl:          [FAIL][128] ([i915#3028]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@sysfs_clients@recycle-many.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl5/igt@sysfs_clients@recycle-many.html

  * igt@testdisplay:
    - shard-kbl:          [DMESG-WARN][130] ([i915#165] / [i915#180] / [i915#78]) -> [PASS][131] +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@testdisplay.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl2/igt@testdisplay.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][132] ([i915#2842]) -> [FAIL][133] ([i915#2849])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][134] ([i915#2684]) -> [WARN][135] ([i915#1804] / [i915#2684]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-kbl:          [DMESG-FAIL][136] ([i915#165]) -> [FAIL][137] ([i915#2641])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-kbl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][138] ([i915#658]) -> [SKIP][139] ([i915#2920])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][140] ([i915#2920]) -> [SKIP][141] ([i915#658]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][146], [FAIL][147], [FAIL][148]) ([i915#2295] / [i915#2724] / [i915#3002])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#1610] / [i915#1814] / [i915#2295] / [i915#2722] / [i915#3002] / [i915#62]) -> ([FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#1610] / [i915#2292] / [i915#2295] / [i915#3002])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl6/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl2/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl2/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl7/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl1/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl3/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/index.html

--===============8840455327629487223==
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
<tr><td><b>Series:</b></td><td>lib: Add a YAML emitter (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/73433/">https://patchwork.freedesktop.org/series/73433/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19662/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9761_full -&gt; Patchwork_19662_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19662_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@core_hotunplug@unbind-rebind.h=
tml">WARN</a> ([i915#2283])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-skl2/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19662/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</=
a> ([i915#2918])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-hsw7/igt@gem_ctx_persistence@engines-mi=
xed.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-skl2/igt@gem_ctx_persistence@legacy-eng=
ines-hang@blt.html">SKIP</a> ([fdo#109271]) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@replace-hostile:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@gem_ctx_persistence@replace-ho=
stile.html">SKIP</a> ([fdo#109271]) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shar=
d-kbl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl7/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/sha=
rd-kbl6/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/sha=
rd-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/s=
hard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-iclb2/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
62/shard-skl5/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a> =
([i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-skl9/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-apl2/igt@gem_userptr_blits@process-exit=
-mmap@wb.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-iclb8/igt@gen9_exec_parse@batch-without-=
end.html">SKIP</a> ([fdo#112306])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-tglb5/igt@gen9_exec_parse@batch-without-=
end.html">SKIP</a> ([fdo#112306])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-tglb5/igt@gen9_exec_parse@bb-oversize.ht=
ml">SKIP</a> ([i915#2527])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-iclb8/igt@gen9_exec_parse@bb-oversize.ht=
ml">SKIP</a> ([i915#2527])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-kbl1/igt@i915_hangman@engine-error@vecs=
0.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-tglb5/igt@i915_pm_lpsp@screens-disabled.=
html">SKIP</a> ([i915#1902])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-iclb8/igt@i915_pm_lpsp@screens-disabled.=
html">SKIP</a> ([i915#1902])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/=
shard-tglb7/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm=
-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm=
-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@kms_color_chamelium@pipe-d-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue<=
/p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-5=
12x512-sliding.html">SKIP</a> ([fdo#109279])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-iclb8/igt@kms_cursor_crc@pipe-c-cursor-5=
12x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19662/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.htm=
l">FAIL</a> ([i915#54]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-random:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@kms_cursor_crc@pipe-d-cursor-5=
12x170-random.html">SKIP</a> ([fdo#109271] / [i915#533]) +8 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19662/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> ([i915#2598])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19662/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.htm=
l">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/s=
hard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> ([i915#=
198] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19662/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> =
([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#2587])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-tglb5/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#111825]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-apl2/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19662/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-overlay-size-64:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl10/igt@kms_plane_cursor@pipe-c-overlay-size-64.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19662/shard-skl1/igt@kms_plane_cursor@pipe-c-overlay-size-64.html">DMESG-=
WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-iclb8/igt@kms_plane_lowres@pipe-d-tilin=
g-x.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-apl2/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-apl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-skl8/igt@kms_psr2_su@frontbuffer.html">=
SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/sha=
rd-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-hsw6/igt@kms_psr@suspend.html">SKIP</a>=
 ([fdo#109271] / [i915#1072]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-apl1/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> ([fdo#109271]) +54 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl9/igt@perf=
@blocking.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-tglb5/igt@prime_nv_api@i915_self_import_=
to_different_fd.html">SKIP</a> ([fdo#109291])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-iclb8/igt@prime_nv_api@i915_self_import_=
to_different_fd.html">SKIP</a> ([fdo#109291])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html">TI=
MEOUT</a> ([i915#2918]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19662/shard-glk9/igt@gem_ctx_persistence@close-replace-rac=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl6/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> =
([i915#1037] / [i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19662/shard-apl2/igt@gem_eio@in-flight-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915=
#1037] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19662/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a><=
/p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-iclb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915=
#1037] / [i915#2481]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19662/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a><=
/p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19662/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">=
PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19662/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19662/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> ([=
fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19662/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
[i915#2876]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19662/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19662/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-iclb6/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19662/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.ht=
ml">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-tglb7/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19662/shard-tglb5/igt@gem_exec_schedule@u-fairslice@rcs0.ht=
ml">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl3/igt@gem_sync@basic-each.html">INCOMPLETE</a> ([i915=
#2944]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19662/shard-apl1/igt@gem_sync@basic-each.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-tglb8/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> (=
[i915#2795]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19662/shard-tglb2/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19662/shard-skl2/igt@gen9_exec_parse@allowed-singl=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMP=
LETE</a> ([i915#146] / [i915#151]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19662/shard-skl8/igt@i915_pm_rpm@system-suspend=
-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl6/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i=
915#155] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19662/shard-kbl1/igt@i915_suspend@forcewake.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html"=
>FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19662/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-rand=
om.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">F=
AIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19662/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html=
">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-skl9/igt@kms_draw_crc@draw-method-rgb56=
5-blt-ytiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19662/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.htm=
l">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19662/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank=
@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html"=
>FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19662/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-=
a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl2/igt@kms_hdr@bpc-switch.html">DMESG-WARN</a> ([i915#=
180] / [i915#78]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19662/shard-kbl2/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19662/shard-skl5/igt@kms_plane_alpha_blend@=
pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (=
[fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19662/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> ([i915#146] / [i915#198]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/shard-skl9/igt@kms_vblank@pip=
e-a-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-iclb6/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i91=
5#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19662/shard-iclb8/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-skl3/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915=
#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19662/shard-skl5/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl2/igt@testdisplay.html">DMESG-WARN</a> ([i915#165] / =
[i915#180] / [i915#78]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19662/shard-kbl2/igt@testdisplay.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19662/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAI=
L</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19662/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-y=
tile.html">DMESG-FAIL</a> ([i915#165]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19662/shard-kbl2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-ytile-to-32bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-5.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19662/shard-iclb2/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area-5.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19662/shard-iclb3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9761/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@runner@aborte=
d.html">FAIL</a>) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19662/s=
hard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19662/shard-iclb3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
662/shard-iclb6/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#272=
4] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9761/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
61/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/sh=
ard-apl3/igt@runner@aborted.html">FAIL</a>) ([i915#1610] / [i915#1814] / [i=
915#2295] / [i915#2722] / [i915#3002] / [i915#62]) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19">FAIL</a>, [FAIL][157], [FA=
IL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#1610] / [i915#2292]=
 / [i915#2295] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8840455327629487223==--

--===============0792431520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0792431520==--
