Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5F835561D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Apr 2021 16:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D46E6E836;
	Tue,  6 Apr 2021 14:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C4C36E231;
 Tue,  6 Apr 2021 14:10:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1233FA8832;
 Tue,  6 Apr 2021 14:10:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 06 Apr 2021 14:10:24 -0000
Message-ID: <161771822404.18458.11213760342539849723@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgcHdt?=
 =?utf-8?q?=3A_Rename_pwm=5Fget=5Fstate=28=29_to_better_reflect_its_semant?=
 =?utf-8?q?ic?=
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
Content-Type: multipart/mixed; boundary="===============1872034659=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1872034659==
Content-Type: multipart/alternative;
 boundary="===============7506651093239344132=="

--===============7506651093239344132==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: pwm: Rename pwm_get_state() to better reflect its semantic
URL   : https://patchwork.freedesktop.org/series/88759/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9928_full -> Patchwork_19895_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19895_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         NOTRUN -> [SKIP][1] ([i915#658])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-apl:          NOTRUN -> [DMESG-WARN][2] ([i915#180])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@legacy-engines-hang@render:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#2410])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb3/igt@gem_ctx_persistence@legacy-engines-hang@render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb8/igt@gem_ctx_persistence@legacy-engines-hang@render.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-snb2/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#2369])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl6/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][15] ([i915#2389]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][16] ([i915#2389])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl9/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@coherency:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#109292])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][19] ([i915#2658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-snb2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#1699]) +7 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl1/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-apl:          NOTRUN -> [FAIL][21] ([i915#3324])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl2/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#3297])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [PASS][23] -> [TIMEOUT][24] ([i915#2795])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-tglb6/igt@gem_vm_create@destroy-race.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-tglb3/igt@gem_vm_create@destroy-race.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109289])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][26] ([i915#1436] / [i915#716])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109293] / [fdo#109506])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_selftest@mock@vma:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#3254])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl8/igt@i915_selftest@mock@vma.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl3/igt@i915_selftest@mock@vma.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl3/igt@i915_suspend@forcewake.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110725] / [fdo#111614])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl7/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl10/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][36] -> [DMESG-WARN][37] ([i915#1982]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl5/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-snb6/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][39] ([i915#1319])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl8/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][40] -> [INCOMPLETE][41] ([i915#146] / [i915#300])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +73 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109274] / [fdo#109278])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][45] -> [INCOMPLETE][46] ([i915#155] / [i915#180] / [i915#636])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109274])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2122]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][50] ([i915#2641])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271]) +330 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109280]) +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +229 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl2/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533]) +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl10/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180] / [i915#533])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658]) +6 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109441])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][67] ([i915#31])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-snb2/igt@kms_setmode@basic.html

  * igt@kms_vrr@flipline:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109502])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2437]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2437])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl9/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl6/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@prime_udl:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109291])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@prime_udl.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994]) +5 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl8/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@sema-25:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2994])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][75] ([i915#2410]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][77] ([i915#2842]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][79] ([i915#2842]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [FAIL][81] ([i915#2842]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         [FAIL][83] ([i915#2842]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][85] ([i915#2428]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_userptr_blits@huge-split:
    - shard-glk:          [FAIL][87] -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-glk7/igt@gem_userptr_blits@huge-split.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-glk4/igt@gem_userptr_blits@huge-split.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl1/igt@i915_suspend@debugfs-reader.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][91] ([i915#2346] / [i915#533]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][93] ([i915#2346]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][95] ([i915#79]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
    - shard-skl:          [DMESG-WARN][97] ([i915#1982]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl1/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl2/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][99] ([fdo#108145] / [i915#265]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb3/igt@kms_psr@psr2_sprite_plane_onoff.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr@suspend:
    - shard-skl:          [INCOMPLETE][103] ([i915#198]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl3/igt@kms_psr@suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl3/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@stress-open-close:
    - shard-iclb:         [INCOMPLETE][107] ([i915#2369]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb5/igt@perf@stress-open-close.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@perf@stress-open-close.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][109] ([i915#658]) -> [SKIP][110] ([i915#588])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][111] ([i915#2684]) -> [WARN][112] ([i915#1804] / [i915#2684])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][113] ([i915#1188]) -> [INCOMPLETE][114] ([i915#198] / [i915#2828])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][115] ([i915#658]) -> [SKIP][116] ([i915#2920]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][117] ([i915#2920]) -> [SKIP][118] ([i915#658])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#602]) -> ([FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([i915#180] / [i915#1814] / [i915#2292] / [i915#3002] / [i915#602] / [i915#92])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl2/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl1/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl3/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][131], [FAIL][132], [FAIL][133]) ([i915#2722] / [i915#3002]) -> ([FAIL][134], [FAIL][135]) ([i915#3002])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb5/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb8/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([i915#180] / [i915#1814] / [i915#3002]) -> ([FAIL][142], [FAIL][143]) ([fdo#109271] / [i915#180] / [i915#1814])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl6/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl6/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][144], [FAIL][145], [FAIL][146]) ([i915#2029] / [i915#3002]) -> ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#1436] / [i915#2029] / [i915#2369] / [i915#3002])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl2/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl3/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl3/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl8/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl3/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl6/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl2/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109502]: https://bugs.freedesktop.org/show_bug.cgi?id=109502
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/index.html

--===============7506651093239344132==
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
<tr><td><b>Series:</b></td><td>pwm: Rename pwm_get_state() to better reflec=
t its semantic</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/88759/">https://patchwork.freedesktop.org/series/88759/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19895/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19895/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9928_full -&gt; Patchwork_19895_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19895_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@feature_discovery@psr2.html">=
SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl1/igt@gem_ctx_isolation@preservation=
-s3@vcs0.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb3/igt@gem_ctx_persistence@legacy-engines-hang@render=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19895/shard-iclb8/igt@gem_ctx_persistence@legacy-engines-hang@rend=
er.html">FAIL</a> ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-snb2/igt@gem_ctx_persistence@smoketest.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org">i915#109=
9</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-sk=
l6/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1989=
5/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2=
842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/sh=
ard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1989=
5/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2=
842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl1/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb1/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-skl9/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@gem_mmap_gtt@coherency.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109292"=
>fdo#109292</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-snb2/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl1/igt@gem_userptr_blits@process-exit=
-mmap@wb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / [i915#1699]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl2/igt@gem_userptr_blits@set-cache-le=
vel.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@gem_userptr_blits@unsync-unma=
p-after-close.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-tglb6/igt@gem_vm_create@destroy-race.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard=
-tglb3/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> ([i915#2795])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@gen7_exec_parse@batch-without=
-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-skl3/igt@gen9_exec_parse@allowed-single=
.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@i915_pm_rpm@gem-execbuf-stres=
s-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl8/igt@i915_selftest@mock@vma.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl3=
/igt@i915_selftest@mock@vma.html">INCOMPLETE</a> ([i915#3254])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-kbl3/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4=
/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl7/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_chamelium@hdmi-hpd-enable=
-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-skl10/igt@kms_chamelium@vga-hpd-for-eac=
h-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-negative:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/sha=
rd-skl5/igt@kms_color@pipe-b-ctm-negative.html">DMESG-WARN</a> ([i915#1982]=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-snb6/igt@kms_color_chamelium@pipe-d-ctm=
-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl8/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
895/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a=
> ([i915#146] / [i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +73 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-=
128x128-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_cursor_legacy@2x-nonblock=
ing-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-k=
bl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#=
180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_flip@2x-flip-vs-wf_vblank=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19895/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> =
([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +330 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +4 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl2/igt@kms_pipe_b_c_ivb@disable-pipe-=
b-enable-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +229 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl1/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-skl10/igt@kms_pipe_crc_basic@disable-cr=
c-after-crtc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19895/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">D=
MESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19895/shard-kbl3/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend-pipe-a-planes.html">DMESG-WARN</a> ([i915#180] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-skl10/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/=
shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_psr@psr2_suspend.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">f=
do#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-snb2/igt@kms_setmode@basic.html">FAIL</=
a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@kms_vrr@flipline.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109502">fdo#1=
09502</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl7/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-skl9/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-kbl6/igt@perf@gen12-oa-tlb-invalidate.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@prime_udl.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#109291</=
a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-apl8/igt@sysfs_clients@fair-1.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb5/igt@sysfs_clients@sema-25.html">S=
KIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">FAIL</=
a> ([i915#2410]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19895/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19895/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19895/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19895/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19895/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19895/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-glk7/igt@gem_userptr_blits@huge-split.html">FAIL</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shar=
d-glk4/igt@gem_userptr_blits@huge-split.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-apl1/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a=
> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19895/shard-apl7/igt@i915_suspend@debugfs-reader.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl10/ig=
t@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">F=
AIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19895/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FA=
IL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19895/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl1/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-=
gtt.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19895/shard-skl2/igt@kms_frontbuffer_tracki=
ng@psr-farfromfence-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19895/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-=
coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb3/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19895/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl3/igt@kms_psr@suspend.html">INCOMPLETE</a> ([i915#198=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1989=
5/shard-skl3/igt@kms_psr@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19895/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuatio=
n-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb5/igt@perf@stress-open-close.html">INCOMPLETE</a> ([=
i915#2369]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19895/shard-iclb5/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19895/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#588])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19895/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i9=
15#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19895/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> ([i=
915#198] / [i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-4.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19895/shard-iclb2/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-5.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19895/shard-iclb7/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-5.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9928/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
28/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1814] =
/ [i915#2505] / [i915#3002] / [i915#602]) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19895/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19895/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19895/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>) ([i915#180] / [i915#1814] / [i915#2292] / [i915#3002]=
 / [i915#602] / [i915#92])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-iclb8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9928/shard-iclb4/igt@runner@aborted.html">FAIL</a>) ([i915#2722] / [i9=
15#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19895/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-iclb4/igt@runner@ab=
orted.html">FAIL</a>) ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9928/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
28/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-apl1/igt@runner@aborted.html">F=
AIL</a>) ([i915#180] / [i915#1814] / [i915#3002]) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19895/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#=
180] / [i915#1814])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9928/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9928/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9928/shard-skl3/igt@runner@aborted.html">FAIL</a>) ([i915#2029] / [i915#=
3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19895/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl3/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19895/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19895/shard-skl2/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19895/shard-skl3/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [=
i915#2029] / [i915#2369] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============7506651093239344132==--

--===============1872034659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1872034659==--
