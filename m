Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B7F3EB9AB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 18:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346D26E880;
	Fri, 13 Aug 2021 16:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B05CF6E87D;
 Fri, 13 Aug 2021 16:01:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8B9BAA917;
 Fri, 13 Aug 2021 16:01:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8388718762889838187=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Aug 2021 16:01:09 -0000
Message-ID: <162887046967.17681.9158392159043237093@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210813113600.GC30697@kili>
In-Reply-To: <20210813113600.GC30697@kili>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Potential_error_pointer_dereference_in_pinned=5Fcon?=
 =?utf-8?b?dGV4dCgp?=
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

--===============8388718762889838187==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Potential error pointer dereference in pinned_context()
URL   : https://patchwork.freedesktop.org/series/93670/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10482_full -> Patchwork_20814_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20814_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20814_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20814_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic-hang:
    - {shard-rkl}:        NOTRUN -> [SKIP][3] +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-rkl-5/igt@kms_busy@basic-hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_20814_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#658])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb2/igt@feature_discovery@psr2.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb8/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][6] ([i915#3002]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-snb7/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          NOTRUN -> [FAIL][8] ([i915#2842] / [i915#3468])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][16] -> [SKIP][17] ([i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#307])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][20] ([i915#2658])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl1/igt@gem_pread@exhaustion.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#109289])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#1937])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@pc8-residency:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#579])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@i915_pm_rpm@pc8-residency.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#2521])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#1769])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-iclb:         [PASS][29] -> [DMESG-WARN][30] ([i915#3621])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][32] -> [DMESG-WARN][33] ([i915#118] / [i915#95])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-glk1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-glk7/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111615]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb8/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689] / [i915#3886])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +8 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
    - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271]) +464 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-snb5/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-snb5/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_content_protection@uevent:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#111828])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3319])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3359]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109279] / [i915#3359])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +83 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2672])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111825]) +10 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][56] -> [INCOMPLETE][57] ([i915#198]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          NOTRUN -> [DMESG-WARN][58] ([i915#180])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
    - shard-skl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][62] ([i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#2920])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109642] / [fdo#111068] / [i915#658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][68] ([i915#132] / [i915#3467])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109441])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][71] ([IGT#2])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +232 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109502])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2437])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2437])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl1/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([i915#1722])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl6/igt@perf@polling-small-buf.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl7/igt@perf@polling-small-buf.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111719])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@perf_pmu@rc6-runtime-pm.html

  * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109291])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb8/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#109295])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@prime_vgem@fence-read-hang.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> ([FAIL][81], [FAIL][82]) ([i915#3002])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-snb7/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-snb7/igt@runner@aborted.html

  * igt@sysfs_clients@create:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl6/igt@sysfs_clients@create.html

  * igt@sysfs_clients@sema-10:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl8/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglb:         [FAIL][85] ([i915#2896]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-tglb2/igt@gem_ctx_persistence@smoketest.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb1/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][87] ([i915#2842]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][89] ([i915#2842]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][91] ([i915#2842]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_softpin@allocator-evict@rcs0:
    - shard-glk:          [DMESG-WARN][93] ([i915#118] / [i915#95]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-glk9/igt@gem_softpin@allocator-evict@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-glk8/igt@gem_softpin@allocator-evict@rcs0.html

  * igt@gem_spin_batch@spin-each:
    - shard-skl:          [FAIL][95] ([i915#2898]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl3/igt@gem_spin_batch@spin-each.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl2/igt@gem_spin_batch@spin-each.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][97] ([i915#3921]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-snb6/igt@i915_selftest@live@hangcheck.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [INCOMPLETE][99] ([i915#2828]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][101] ([i915#2346]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][103] ([i915#79]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][109] ([i915#2122]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][111] ([i915#1188]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl4/igt@kms_hdr@bpc-switch.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][113] ([fdo#108145] / [i915#265]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-c-wait-forked-hang:
    - shard-tglb:         [INCOMPLETE][117] -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-tglb7/igt@kms_vblank@pipe-c-wait-forked-hang.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_vblank@pipe-c-wait-forked-hang.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][119] ([i915#1542]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl6/igt@perf@blocking.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl7/igt@perf@blocking.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][121] ([i915#1542]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-glk8/igt@perf@polling-parameterized.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-glk5/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         [SKIP][123] ([i915#2848]) -> [FAIL][124] ([i915#2842])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tglb8/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][125] ([i915#2684]) -> [WARN][126] ([i915#1804] / [i915#2684])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          [FAIL][127] -> [FAIL][128] ([i915#3722])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][129] ([i915#2920]) -> [SKIP][130] ([i915#658]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][131] ([i915#658]) -> [SKIP][132] ([i915#2920]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#180] / [i915#2505] / [i915#3002] / [i915#3363]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl1/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][144], [FAIL][145]) ([i915#3002]) -> ([FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1814] / [i915#3002])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb8/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb6/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchw

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/index.html

--===============8388718762889838187==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Potential error pointer derefer=
ence in pinned_context()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93670/">https://patchwork.freedesktop.org/series/93670/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20814/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20814/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10482_full -&gt; Patchwork_20814_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20814_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20814_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20814_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20814/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtile=
d.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_busy@basic-hang:<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-rkl-5/igt@kms_busy@basic-hang.html">SKI=
P</a> +5 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20814_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-ic=
lb8/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-snb7/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl8/igt@gem_exec_fair@basic-none@vecs0=
.html">FAIL</a> ([i915#2842] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0814/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/sh=
ard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2081=
4/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814=
/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#307]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl1/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20814/shard-apl2/igt@gem_workarounds@suspend-resume-context.html">DMESG-WA=
RN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@gen7_exec_parse@basic-offset.=
html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@i915_pm_rpm@pc8-residency.htm=
l">SKIP</a> ([i915#579])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20814/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html">FA=
IL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_atomic_transition@plane-a=
ll-modeset-transition.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0814/shard-iclb1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">DMESG-WARN</=
a> ([i915#3621])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-glk1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2081=
4/shard-glk7/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb8/igt@kms_big_fb@yf-tiled-addfb-siz=
e-overflow.html">SKIP</a> ([fdo#111615]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-9=
0-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_ccs@pipe-b-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]=
) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_ccs@pipe-c-bad-pixel-form=
at-yf_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-snb5/igt@kms_ccs@pipe-d-bad-pixel-forma=
t-y_tiled_ccs.html">SKIP</a> ([fdo#109271]) +464 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_chamelium@hdmi-audio-edid.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-snb5/igt@kms_chamelium@hdmi-hpd-fast.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_color_chamelium@pipe-d-ct=
m-blue-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb8/igt@kms_content_protection@uevent=
.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-sliding.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-=
max-size-rapid-movement.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0814/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl3/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +4 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#111825]) +10 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20814/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html"=
>INCOMPLETE</a> ([i915#198]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl7/igt@kms_plane@plane-panning-bottom=
-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-al=
pha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues<=
/p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20814/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-al=
pha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20814/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-al=
pha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_psr2_sf@plane-move-sf-dmg=
-area-0.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-icl=
b4/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109642] / [fdo#111068] / =
[i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_psr@psr2_primary_mmap_gtt=
.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/=
shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl8/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +232 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@kms_vrr@flip-suspend.html">SK=
IP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-skl7/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl1/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl6/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl=
7/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@perf_pmu@rc6-runtime-pm.html"=
>SKIP</a> ([fdo#111719])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_gtt_mmap_read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb8/igt@prime_nv_test@nv_write_i915_g=
tt_mmap_read.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-tglb6/igt@prime_vgem@fence-read-hang.ht=
ml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20814/shard-snb7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shard=
-snb7/igt@runner@aborted.html">FAIL</a>) ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-kbl6/igt@sysfs_clients@create.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20814/shard-apl8/igt@sysfs_clients@sema-10.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-tglb2/igt@gem_ctx_persistence@smoketest.html">FAIL</a> =
([i915#2896]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20814/shard-tglb1/igt@gem_ctx_persistence@smoketest.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20814/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20814/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20814/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-glk9/igt@gem_softpin@allocator-evict@rcs0.html">DMESG-W=
ARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20814/shard-glk8/igt@gem_softpin@allocator-evict@=
rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-each:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl3/igt@gem_spin_batch@spin-each.html">FAIL</a> ([i915=
#2898]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20814/shard-skl2/igt@gem_spin_batch@spin-each.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> ([i915#3921]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20814/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INC=
OMPLETE</a> ([i915#2828]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20814/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspen=
d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">=
FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20814/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legac=
y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20814/shard-skl3/igt@kms_flip@flip-vs-expired-vb=
lank-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20814/shard-apl1/igt@kms_flip@flip-vs-suspend-int=
erruptible@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20814/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS<=
/a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20814/shard-skl6/igt@kms_flip@plain-flip-fb-re=
create-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814=
/shard-skl3/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20814/shard-skl4/igt@kms_plane_alpha_blend=
@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> =
([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20814/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked-hang:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-tglb7/igt@kms_vblank@pipe-c-wait-forked-hang.html">INCO=
MPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20814/shard-tglb6/igt@kms_vblank@pipe-c-wait-forked-hang.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl6/igt@perf@blocking.html">FAIL</a> ([i915#1542]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/shar=
d-skl7/igt@perf@blocking.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-glk8/igt@perf@polling-parameterized.html">FAIL</a> ([i9=
15#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20814/shard-glk5/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html">SKIP<=
/a> ([i915#2848]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20814/shard-tglb8/igt@gem_exec_fair@basic-none-vip@rcs0.html">FA=
IL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20814/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20814/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3722])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-3.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20814/shard-iclb8/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area-3.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20814/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10482/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-kbl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10482/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#2=
505] / [i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20814/shard-kbl1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814/sh=
ard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20814/shard-kbl2/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20814=
/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20814/shard-kbl3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
814/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180]=
 / [i915#1814] / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10482/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/shard-iclb6/igt@runner@a=
borted.html">FAIL</a>) ([i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchw">FAIL</a>, [FAIL][147], [FAIL][148]) ([i915#181=
4] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8388718762889838187==--
