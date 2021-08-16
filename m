Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C803ED2F1
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 13:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C143899EA;
	Mon, 16 Aug 2021 11:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F005289DD2;
 Mon, 16 Aug 2021 11:14:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E51AFA9A42;
 Mon, 16 Aug 2021 11:14:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5702234481162167113=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Aug 2021 11:14:15 -0000
Message-ID: <162911245591.26192.4215586153913022490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210816071737.2917-1-jani.nikula@intel.com>
In-Reply-To: <20210816071737.2917-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_remove_superfluous_EXPORT=5FSYMBOL=28=29?=
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

--===============5702234481162167113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: remove superfluous EXPORT_SYMBOL()
URL   : https://patchwork.freedesktop.org/series/93708/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10487_full -> Patchwork_20828_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20828_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20828_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20828_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-tglb7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-tglb8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_20828_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#2369] / [i915#3063] / [i915#3648])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2846])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-glk6/igt@gem_exec_fair@basic-deadline.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-glk6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-kbl:          [PASS][9] -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#2190])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl2/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1888] / [i915#307])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-skl10/igt@gem_mmap_gtt@big-copy-xy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl2/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#1888] / [i915#307] / [i915#3468])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-glk7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#307])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][21] ([i915#2658])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-snb2/igt@gem_pread@exhaustion.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#2856])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb6/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][25] ([i915#3921])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@perf@request:
    - shard-iclb:         [PASS][26] -> [DMESG-WARN][27] ([i915#2867]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb4/igt@i915_selftest@perf@request.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb1/igt@i915_selftest@perf@request.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3777]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271]) +226 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-tglb6/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl10/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +11 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl6/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-tglb6/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl5/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +49 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl10/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-75:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][42] ([i915#2105])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +48 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:
    - shard-glk:          [PASS][44] -> [DMESG-FAIL][45] ([i915#118] / [i915#70] / [i915#95])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-glk3/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2346])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][48] ([i915#2346] / [i915#533])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb6/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#79])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271]) +366 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [FAIL][55] ([i915#2546])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][59] ([i915#180]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb1/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2437]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl2/igt@kms_writeback@writeback-check-output.html
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2437])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@kms_writeback@writeback-check-output.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl10/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2994]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl3/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@split-50:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#2994])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb6/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +5 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][75] ([i915#2842]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][77] ([i915#2842]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][79] ([i915#2842]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][81] ([i915#2851]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-iclb:         [FAIL][83] ([i915#2842]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][85] ([i915#2849]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][87] ([i915#2521]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:
    - shard-snb:          [SKIP][89] ([fdo#109271]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-snb2/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-snb6/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:
    - shard-skl:          [DMESG-WARN][91] ([i915#1982]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-skl3/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][93] ([i915#2122]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][97] ([i915#1188]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][99] ([fdo#109441]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb5/igt@kms_psr@psr2_basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][101] ([i915#1722]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-skl6/igt@perf@polling-small-buf.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl5/igt@perf@polling-small-buf.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [FAIL][103] ([i915#1731]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][105] ([i915#1804] / [i915#2684]) -> [WARN][106] ([i915#2684])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [INCOMPLETE][108] ([i915#2828])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][109] ([i915#2920]) -> [SKIP][110] ([i915#658]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][111] ([i915#658]) -> [SKIP][112] ([i915#2920]) +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl7/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl7/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl4/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl3/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl7/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl7/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl3/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl3/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl1/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl1/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl3/igt@runner@aborted.html
    - shard-apl:          ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl1/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl8/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl6/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/index.html

--===============5702234481162167113==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: remove superfluous EXPORT_SYMBO=
L()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93708/">https://patchwork.freedesktop.org/series/93708/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20828/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20828/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10487_full -&gt; Patchwork_20828_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20828_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20828_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20828_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-tglb7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pip=
e-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20828/shard-tglb8/igt@kms_pipe_crc_basic@disable-crc-after-crtc=
-pipe-b.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20828_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-tg=
lb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2369">i915#2369</a> / [i915#3063] / [i915=
#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-glk6/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/sha=
rd-glk6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20828/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.=
html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10487/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/sha=
rd-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2082=
8/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20828/shard-apl2/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
190">i915#2190</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20828/shard-kbl4/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-skl10/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-=
skl2/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / [i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-glk7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20828/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1=
888</a> / [i915#307] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/sh=
ard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-snb2/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-iclb6/igt@gen9_exec_parse@cmd-crossing-=
page.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-iclb4/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-snb6/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> ([i915#3921])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@request:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-iclb4/igt@i915_selftest@perf@request.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shar=
d-iclb1/igt@i915_selftest@perf@request.html">DMESG-WARN</a> ([i915#2867]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-str=
ide-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +226 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-tglb6/igt@kms_ccs@pipe-a-ccs-on-another=
-bo-yf_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-skl10/igt@kms_ccs@pipe-a-missing-ccs-bu=
ffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-kbl6/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl1/igt@kms_ccs@pipe-b-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +11 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20828/shard-kbl6/igt@kms_chamelium@hdmi-hpd-enable-d=
isable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20828/shard-tglb6/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-skl5/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-skl10/igt@kms_color@pipe-d-ctm-0-5.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a>) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm=
-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-iclb6/igt@kms_color_chamelium@pipe-c-ct=
m-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm=
-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl2/igt@kms_content_protection@uevent.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2105">i915#2105</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-3=
2x10-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-glk3/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20828/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.=
html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/118">i915#118</a> / [i915#70] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20828/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-skl10/igt@kms_cursor_legacy@flip-vs-cur=
sor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-iclb6/igt@kms_cursor_legacy@pipe-d-sing=
le-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20828/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20828/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +366 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1=
p-primscrn-spr-indfb-draw-render.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10487/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pi=
pe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20828/shard-kbl3/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend@pipe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20828/shard-apl7/igt@kms_plane@plane-panning-bottom-=
right-suspend@pipe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-kbl4/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-=
iclb1/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20828/shard-apl2/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2437">i915#2437</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20828/shard-kbl4/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-skl10/igt@sysfs_clients@fair-0.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-apl3/igt@sysfs_clients@fair-7.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-iclb6/igt@sysfs_clients@split-50.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20828/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html=
">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20828/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PA=
SS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20828/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20828/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10487/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
[i915#2851]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20828/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10487/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20828/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a><=
/p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20828/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521=
">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20828/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-snb2/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20828/shard-snb6/igt@kms_cursor_edge_walk@pipe-a-128x128-top=
-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-skl3/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20828/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-128x1=
28-right-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-glk3/igt@kms_flip@2x-flip-v=
s-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20828/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/s=
hard-skl6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-iclb5/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shar=
d-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-skl6/igt@perf@polling-small-buf.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/sha=
rd-skl5/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915=
#1731</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20828/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS</a>=
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20828/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WA=
RN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20828/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pip=
e-c.html">INCOMPLETE</a> ([i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-4.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20828/shard-iclb1/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SK=
IP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20828/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.htm=
l">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10487/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10487/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0487/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1048=
7/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-kbl1/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">=
i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / [i915#3002] / [i915#3363] / [i915#602]) -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl=
1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20828/shard-kbl1/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-=
kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20828/shard-kbl7/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/sha=
rd-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20828/shard-kbl1/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/=
shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20828/shard-kbl3/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_208=
28/shard-kbl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#300=
2] / [i915#3363])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10487/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10487/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10487/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/shard-apl8/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0487/shard-apl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915=
#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20828/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl7/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20828/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-apl1/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20828/shard-apl8/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard-ap=
l6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20828/shard-apl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20828/shard=
-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#3002] / [i915#336=
3])</p>
</li>
</ul>
</li>
</ul>
<p>[i</p>

</body>
</html>

--===============5702234481162167113==--
