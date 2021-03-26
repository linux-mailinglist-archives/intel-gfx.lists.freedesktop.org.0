Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 935B0349FB3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 03:21:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785756EEA4;
	Fri, 26 Mar 2021 02:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2349F6EEA3;
 Fri, 26 Mar 2021 02:21:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19AD8A0019;
 Fri, 26 Mar 2021 02:21:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wan Jiabing" <wanjiabing@vivo.com>
Date: Fri, 26 Mar 2021 02:21:55 -0000
Message-ID: <161672531507.10685.12169068449942368379@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325050059.848207-1-wanjiabing@vivo.com>
In-Reply-To: <20210325050059.848207-1-wanjiabing@vivo.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJp?=
 =?utf-8?q?vers=3A_gpu=3A_drm=3A_Remove_repeated_declaration?=
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
Content-Type: multipart/mixed; boundary="===============1929715666=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1929715666==
Content-Type: multipart/alternative;
 boundary="===============4458657001830480720=="

--===============4458657001830480720==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drivers: gpu: drm: Remove repeated declaration
URL   : https://patchwork.freedesktop.org/series/88431/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9895_full -> Patchwork_19852_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19852_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2] ([i915#2918])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-glk3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#2369] / [i915#3063])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2846])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#2849])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-bsd:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#109283])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          NOTRUN -> [TIMEOUT][18] ([i915#3183])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl2/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][19] ([i915#2389]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][20] ([i915#2658])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([i915#1185])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb6/igt@gem_workarounds@suspend-resume-context.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb3/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][23] ([fdo#109271]) +175 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-snb2/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +48 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl4/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#112306])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][26] ([i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_chamelium@dp-hpd-storm:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_chamelium@dp-hpd-storm.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-snb6/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1982]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl6/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl9/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-apl3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][34] ([i915#1319]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +132 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109274] / [fdo#109278])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][38] ([i915#2346])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          NOTRUN -> [FAIL][39] ([i915#52] / [i915#54]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][40] -> [INCOMPLETE][41] ([i915#180])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          NOTRUN -> [INCOMPLETE][42] ([i915#155] / [i915#180] / [i915#636])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109274]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2122])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#2587])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2672])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][48] ([i915#2641])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#111825]) +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109280]) +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][51] ([i915#1188])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#1187])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#198])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
    - shard-skl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][62] ([i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][63] -> [FAIL][64] ([fdo#108145] / [i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#1836])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658]) +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109441]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +157 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-apl6/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2437])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl4/igt@kms_writeback@writeback-fb-id.html
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2437])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl3/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2437])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#2530])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-d-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109278] / [i915#2530])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@nouveau_crc@pipe-d-source-outp-inactive.html

  * igt@prime_nv_api@i915_nv_import_vs_close:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109291])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb7/igt@prime_nv_api@i915_nv_import_vs_close.html
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109291])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@prime_nv_api@i915_nv_import_vs_close.html

  * igt@sysfs_clients@split-10:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2994])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-skl:          [INCOMPLETE][80] ([i915#198]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl9/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83] +7 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-10ms:
    - shard-skl:          [TIMEOUT][84] ([i915#2502]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl8/igt@gem_eio@in-flight-10ms.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl7/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [TIMEOUT][86] ([i915#3063]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-skl:          [TIMEOUT][88] ([i915#3063]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl2/igt@gem_eio@in-flight-contexts-immediate.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl1/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][90] ([i915#2842]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][92] ([i915#2842]) -> [PASS][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [INCOMPLETE][94] -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][96] ([i915#2428]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-iclb:         [FAIL][98] ([i915#307]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][100] ([i915#1436] / [i915#716]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-skl:          [DMESG-WARN][102] ([i915#1982]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][104] ([i915#79]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][106] ([i915#79]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][110] ([fdo#108145] / [i915#265]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][112] ([fdo#109441]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@prime_vgem@sync@rcs0:
    - shard-tglb:         [INCOMPLETE][114] ([i915#409]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb2/igt@prime_vgem@sync@rcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb7/igt@prime_vgem@sync@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][116] ([i915#2684]) -> [WARN][117] ([i915#2681] / [i915#2684])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][118] ([i915#2920]) -> [SKIP][119] ([i915#658]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][120] ([i915#658]) -> [SKIP][121] ([i915#2920]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#602]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#92])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl3/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl3/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl3/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl3/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl7/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl3/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl7/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][137], [FAIL][138], [FAIL][139]) ([i915#2426] / [i915#3002] / [i915#409]) -> ([FAIL][140], [FAIL][141]) ([i915#3002])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb2/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#3002]) -> ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#1814] / [i915#2029] / [i915#3002])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl4/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl3/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl9/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl3/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl10/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl2/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl2/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl3/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: http

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/index.html

--===============4458657001830480720==
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
<tr><td><b>Series:</b></td><td>drivers: gpu: drm: Remove repeated declarati=
on</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/88431/">https://patchwork.freedesktop.org/series/88431/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19852/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19852/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9895_full -&gt; Patchwork_19852_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19852_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19852/shard-glk3/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</=
a> ([i915#2918])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tgl=
b6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shar=
d-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@gem_exec_fair@basic-none-rrul=
@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/sha=
rd-glk4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1985=
2/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2=
842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/sh=
ard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1985=
2/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2=
849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@gem_exec_params@no-bsd.html">=
SKIP</a> (<a href=3D"http">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-kbl2/igt@gem_exec_reloc@basic-parallel.=
html">TIMEOUT</a> ([i915#3183])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-snb2/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-skl4/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb6/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19852/shard-iclb3/igt@gem_workarounds@suspend-resume-context.html">INCOMPL=
ETE</a> ([i915#1185])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-snb2/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +175 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-skl4/igt@gen9_exec_parse@bb-oversize.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@gen9_exec_parse@secure-batche=
s.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_chamelium@dp-hpd-storm.ht=
ml">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-snb6/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl6/igt@kms_color@pipe-a-ctm-blue-to-red.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/=
shard-skl9/igt@kms_color@pipe-a-ctm-blue-to-red.html">DMESG-WARN</a> ([i915=
#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-apl3/igt@kms_color_chamelium@pipe-inval=
id-degamma-lut-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / [fdo#111827]) +17 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-kbl1/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +132 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-=
64x64-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8=
888-render-ytiled.html">FAIL</a> ([i915#52] / [i915#54]) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9895/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-ap=
l8/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19852/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html"=
>INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_flip@2x-blocking-wf_vblan=
k.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19852/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#111825]) +4 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">=
FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-=
kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_hdr@static-toggle-dpms.ht=
ml">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-apl7/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19852/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">I=
NCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19852/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-al=
pha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-al=
pha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19852/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-=
min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@kms_prime@basic-crc@first-to-=
second.html">SKIP</a> ([i915#1836])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-kbl4/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-skl4/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-apl3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/sh=
ard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-apl6/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +157 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19852/shard-kbl4/igt@kms_writeback@writeback-fb-id.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / [i915#2437])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19852/shard-skl3/igt@kms_writeback@writeback-fb-id.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-apl3/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@nouveau_crc@pipe-b-ctx-flip-s=
kip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@nouveau_crc@pipe-d-source-out=
p-inactive.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109278">fdo#109278</a> / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_vs_close:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19852/shard-tglb7/igt@prime_nv_api@i915_nv_import_vs=
_close.html">SKIP</a> ([fdo#109291])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19852/shard-iclb8/igt@prime_nv_api@i915_nv_import_vs=
_close.html">SKIP</a> ([fdo#109291])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-iclb8/igt@sysfs_clients@split-10.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl9/igt@gem_ctx_isolation@preservation-s3@bcs0.html">IN=
COMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19852/shard-skl3/igt@gem_ctx_isolation@preservation-s3@b=
cs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DM=
ESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19852/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@v=
cs0.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl8/igt@gem_eio@in-flight-10ms.html">TIMEOUT</a> ([i915=
#2502]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19852/shard-skl7/igt@gem_eio@in-flight-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT<=
/a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19852/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl2/igt@gem_eio@in-flight-contexts-immediate.html">TIME=
OUT</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19852/shard-skl1/igt@gem_eio@in-flight-contexts-immediate.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19852/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19852/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19852/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19852/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL=
</a> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19852/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19852/shard-skl4/igt@gen9_exec_parse@allowed-singl=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor=
-atomic.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-skl10/igt@kms_cursor_legacy=
@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-h=
dmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19852/shard-glk6/igt@kms_flip@2x-flip-vs-expired=
-vblank@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FA=
IL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19852/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN=
</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19852/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19852/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-=
coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19852/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb2/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i9=
15#409]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19852/shard-tglb7/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19852/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19852/shard-iclb3/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19852/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-5.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9895/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_98=
95/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/sh=
ard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_9895/shard-kbl4/igt@runner@aborted.html">FAIL</=
a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#602]) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/sha=
rd-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19852/shard-kbl7/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/=
shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl2/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_198=
52/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-kbl3/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19852/shard-kbl7/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#181=
4] / [i915#3002] / [i915#92])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9895/shard-tglb2/igt@runner@aborted.html">FAIL</a>) ([i915#2426] / [i9=
15#3002] / [i915#409]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19852/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-tglb2/=
igt@runner@aborted.html">FAIL</a>) ([i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9895/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9895/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/shard-skl9/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_98=
95/shard-skl3/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#1814]=
 / [i915#2029] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19852/shard-skl3/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/shard-=
skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19852/shard-skl2/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852/sh=
ard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19852/shard-skl3/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19852=
/shard-skl1/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2029] /=
 [i915#3002])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============4458657001830480720==--

--===============1929715666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1929715666==--
