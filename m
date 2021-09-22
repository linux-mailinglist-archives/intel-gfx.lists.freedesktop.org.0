Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA6D4149B2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 14:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DCBC6EB93;
	Wed, 22 Sep 2021 12:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75F7F6EB93;
 Wed, 22 Sep 2021 12:52:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D776A0003;
 Wed, 22 Sep 2021 12:52:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0112476612054978169=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 12:52:21 -0000
Message-ID: <163231514141.6944.11018050497587380680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922085432.2776886-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20210922085432.2776886-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgY29t?=
 =?utf-8?q?ponent=3A_do_not_leave_master_devres_group_open_after_bind_=28r?=
 =?utf-8?q?ev2=29?=
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

--===============0112476612054978169==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: component: do not leave master devres group open after bind (rev2)
URL   : https://patchwork.freedesktop.org/series/94889/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10624_full -> Patchwork_21126_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_21126_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [PASS][4] -> [SKIP][5] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][6] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-tglb:         NOTRUN -> [FAIL][7] ([i915#2842]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb5/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_schedule@u-submit-early-slice@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][13] ([i915#3797])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl9/igt@gem_exec_schedule@u-submit-early-slice@vecs0.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#768])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb6/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#3323])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([i915#2856]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1436] / [i915#716])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][19] ([fdo#109271]) +330 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-snb6/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#2856]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#109289] / [fdo#111719])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#109289])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#1769])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#1769])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_big_fb@linear-32bpp-rotate-270.html
    - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#111614])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          NOTRUN -> [DMESG-WARN][29] ([i915#118] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3777]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#111615])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +268 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#2705])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_big_joiner@2x-modeset.html
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#2705])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl10/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3689] / [i915#3886]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278] / [i915#3886]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +13 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278]) +9 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_chamelium@hdmi-crc-fast.html
    - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd:
    - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk8/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][49] ([i915#1319]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][50] ([i915#2105])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +111 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3359])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [PASS][53] -> [INCOMPLETE][54] ([i915#456])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109279] / [i915#3359])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen.html
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109278] / [fdo#109279])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +132 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109274] / [fdo#109278])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109274]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#2122])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2672])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +9 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271]) +30 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#111825]) +10 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [PASS][66] -> [INCOMPLETE][67] ([i915#2411] / [i915#456]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +6 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][72] ([i915#180]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][73] ([i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([fdo#108145] / [i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][76] ([fdo#108145] / [i915#265]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +8 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#658])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#2920])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109441])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_psr@psr2_primary_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][88] -> [INCOMPLETE][89] ([i915#2828] / [i915#456])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#2530])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@nouveau_crc@pipe-d-source-rg.html
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109278] / [i915#2530])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109291])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109291])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109295])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@prime_vgem@fence-flip-hang.html
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109295])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@prime_vgem@fence-flip-hang.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl8/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@sema-25:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl10/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-glk:          [INCOMPLETE][98] ([i915#4130]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk9/igt@core_hotunplug@unbind-rebind.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@unaligned-write:
    - shard-glk:          [FAIL][100] -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk8/igt@fbdev@unaligned-write.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk3/igt@fbdev@unaligned-write.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][104] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb7/igt@gem_eio@unwedge-stress.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][106] ([i915#2842]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][108] ([i915#2842]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [FAIL][110] ([i915#2842]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [FAIL][112] ([i915#2842]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][114] ([i915#2849]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-glk:          [INCOMPLETE][116] -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk2/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk8/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-iclb:         [INCOMPLETE][118] -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb2/igt@gem_exec_suspend@basic-s3.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb5/igt@gem_exec_suspend@basic-s3.html
    - shard-tglb:         [INCOMPLETE][120] ([i915#2369] / [i915#2411] / [i915#4173] / [i915#456]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb1/igt@gem_exec_suspend@basic-s3.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][122] ([i915#198]) -> [PASS][123] +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl4/igt@gem_softpin@noreloc-s3.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl10/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125] +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [INCOMPLETE][126] ([i915#155] / [i915#794]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][128] ([i915#1982]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl6/igt@i915_module_load@reload.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl6/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][130] ([i915#454]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
    - shard-glk:          [FAIL][132] ([i915#79]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][134] ([i915#79]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][136] ([i915#1188]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl6/igt@kms_hdr@bpc-switch.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_vblank@pipe-a

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/index.html

--===============0112476612054978169==
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
<tr><td><b>Series:</b></td><td>component: do not leave master devres group open after bind (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94889/">https://patchwork.freedesktop.org/series/94889/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10624_full -&gt; Patchwork_21126_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21126_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb5/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-submit-early-slice@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl9/igt@gem_exec_schedule@u-submit-early-slice@vecs0.html">INCOMPLETE</a> ([i915#3797])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb6/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl9/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-snb6/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([fdo#109271]) +330 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> ([fdo#109289] / [fdo#111719])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> ([fdo#109289])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> ([fdo#111614])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +268 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_big_joiner@2x-modeset.html">SKIP</a> ([i915#2705])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@kms_big_joiner@2x-modeset.html">SKIP</a> ([i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl10/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk8/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl1/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl3/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">SKIP</a> ([fdo#109271]) +111 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html">SKIP</a> ([fdo#109271]) +132 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_flip@2x-flip-vs-panning-interruptible.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-rte.html">SKIP</a> ([fdo#109271]) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> ([fdo#111825]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#658])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@kms_psr@psr2_primary_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@nouveau_crc@pipe-d-source-rg.html">SKIP</a> ([i915#2530])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@nouveau_crc@pipe-d-source-rg.html">SKIP</a> ([fdo#109278] / [i915#2530])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html">SKIP</a> ([fdo#109291])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html">SKIP</a> ([fdo#109291])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb1/igt@prime_vgem@fence-flip-hang.html">SKIP</a> ([fdo#109295])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb8/igt@prime_vgem@fence-flip-hang.html">SKIP</a> ([fdo#109295])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl8/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl10/igt@sysfs_clients@sema-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk9/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> ([i915#4130]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk8/igt@fbdev@unaligned-write.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk3/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk2/igt@gem_exec_flush@basic-wb-rw-before-default.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk8/igt@gem_exec_flush@basic-wb-rw-before-default.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb2/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb5/igt@gem_exec_suspend@basic-s3.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-tglb1/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> ([i915#2369] / [i915#2411] / [i915#4173] / [i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-tglb3/igt@gem_exec_suspend@basic-s3.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl4/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl10/igt@gem_softpin@noreloc-s3.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-apl3/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> ([i915#155] / [i915#794]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl6/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl6/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10624/shard-skl6/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21126/shard-skl8/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a</p>
</li>
</ul>

</body>
</html>

--===============0112476612054978169==--
