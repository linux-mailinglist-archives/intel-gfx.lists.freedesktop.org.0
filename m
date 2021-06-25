Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE81D3B3CD1
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 08:53:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D036ECD7;
	Fri, 25 Jun 2021 06:53:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82F936EC35;
 Fri, 25 Jun 2021 06:53:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F1E6A73C9;
 Fri, 25 Jun 2021 06:53:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 25 Jun 2021 06:53:36 -0000
Message-ID: <162460401651.13649.5401121826470122768@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624183110.22582-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210624183110.22582-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Introduce_a_migrate_interface?=
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
Content-Type: multipart/mixed; boundary="===============0503141298=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0503141298==
Content-Type: multipart/alternative;
 boundary="===============6761521325643282040=="

--===============6761521325643282040==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Introduce a migrate interface
URL   : https://patchwork.freedesktop.org/series/91890/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10278_full -> Patchwork_20462_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_20462_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20462_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20462_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][1] ([i915#658]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10278_full and Patchwork_20462_full:

### New IGT tests (1) ###

  * igt@i915_selftest@live@gem_migrate:
    - Statuses : 7 pass(s)
    - Exec time: [0.50, 5.13] s

  

Known issues
------------

  Here are the changes found in Patchwork_20462_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@idempotent:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-snb7/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][4] -> [TIMEOUT][5] ([i915#2369] / [i915#2481] / [i915#3070])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb6/igt@gem_eio@unwedge-stress.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#2369])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl3/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          NOTRUN -> [FAIL][10] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][11] ([fdo#109283])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][12] ([i915#3633]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][13] ([i915#3633]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl1/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#768])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#3323])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][17] ([i915#3002])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl8/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][18] ([i915#3318])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl1/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +290 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl2/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][20] ([fdo#109271]) +129 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#112306])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_hangman@engine-error@vecs0:
    - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +141 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@i915_hangman@engine-error@vecs0.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          NOTRUN -> [DMESG-WARN][23] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl7/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-glk:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk7/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +28 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][31] ([i915#1319]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][32] ([i915#2105])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +20 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][34] ([i915#2405] / [i915#300])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-iclb:         [PASS][35] -> [INCOMPLETE][36] ([i915#1185])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-random:
    - shard-glk:          NOTRUN -> [SKIP][37] ([fdo#109271]) +26 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109274] / [fdo#109278])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:
    - shard-glk:          [PASS][40] -> [DMESG-WARN][41] ([i915#118] / [i915#95]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-glk5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html

  * igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl5/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl2/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#79])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#79])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +5 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][50] -> [INCOMPLETE][51] ([i915#198])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2122]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2672])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109280]) +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265]) +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-glk:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109441]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_sequence@queue-idle:
    - shard-tglb:         [PASS][64] -> [DMESG-WARN][65] ([i915#2868])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-tglb5/igt@kms_sequence@queue-idle.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-tglb5/igt@kms_sequence@queue-idle.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-skl:          NOTRUN -> [WARN][66] ([i915#2100])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl3/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][67] ([i915#165])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][68] -> [INCOMPLETE][69] ([i915#198] / [i915#2405])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2437]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-c-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#2530])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@nouveau_crc@pipe-c-source-outp-complete.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#1542])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl10/igt@perf@polling-parameterized.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl5/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#1722])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl10/igt@perf@polling-small-buf.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl6/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2994]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl2/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-1:
    - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@sysfs_clients@fair-1.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][79] ([i915#658]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb7/igt@feature_discovery@psr2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][81] ([i915#2369] / [i915#3063]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][83] ([i915#2846]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][85] ([i915#2842]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][87] ([i915#2849]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [FAIL][89] ([i915#307]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl9/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-iclb:         [DMESG-WARN][95] ([i915#3621]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:
    - shard-skl:          [DMESG-WARN][97] ([i915#1982]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl6/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][99] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][101] ([i915#2122]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-glk7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][103] ([i915#79]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [FAIL][105] ([i915#2122]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][107] ([i915#1188]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][109] ([fdo#108145] / [i915#265]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][113] ([i915#155]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][115] ([i915#1804] / [i915#2684]) -> [WARN][116] ([i915#2684]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-iclb:         [SKIP][117] -> [SKIP][118] ([i915#658])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92]) -> ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl3/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl2/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl3/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl2/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl3/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl3/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl6/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl2/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([fdo#109271] / [i915#180] / [i915#3363]) -> ([FAIL][139], [FAIL][140], [FAIL][141]) ([i915#180] / [i915#3002] / [i915#3363])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-apl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-apl8/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-apl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-apl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-apl3/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl8/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][142], [FAIL][143]) ([i915#1814] / [i915#3002] / [i915#3363]) -> [FAIL][144] ([i915#3002] / [i915#3363])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl5/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl9/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/index.html

--===============6761521325643282040==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Introduce a migrate interface<=
/td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/91890/">https://patchwork.freedesktop.org/series/91890/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20462/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20462/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10278_full -&gt; Patchwork_20462_f=
ull</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_20462_full need to be verifi=
ed<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20462_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20462_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
5.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20462/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10278_full and Patchwork_2=
0462_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@gem_migrate:<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.50, 5.13] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20462_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-snb7/igt@gem_ctx_persistence@idempotent=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-ic=
lb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481]=
 / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-s=
kl3/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
462/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.=
html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@gem_exec_params@no-vebox.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10928=
3">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl1/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#3633]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> ([i915#3633]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl1/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@gem_render_copy@yf-tiled-to-v=
ebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl8/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl1/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl2/igt@gen7_exec_parse@basic-offset.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) +290 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-snb7/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +129 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@gen9_exec_parse@bb-start-far.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@i915_hangman@engine-error@vecs=
0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +141 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl3/igt@i915_suspend@fence-restore-unt=
iled.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-apl3/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-=
apl1/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-skl7/igt@kms_chamelium@hdmi-hpd.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-glk7/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@kms_color_chamelium@pipe-a-deg=
amma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl2/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl2/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-s=
uspend.html">INCOMPLETE</a> ([i915#2405] / [i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20462/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1185">i915=
#1185</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-=
64x21-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-=
flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-glk5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-yti=
led.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20462/shard-glk8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu=
-ytiled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/118">i915#118</a> / [i915#95]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl5/igt@kms_flip@absolute-wf_vblank-interruptible@a-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20462/shard-skl2/igt@kms_flip@absolute-wf_vblank-interruptible@a=
-edp1.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20462/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20462/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@c-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20462/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462=
/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> ([i915=
#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20462/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl3/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-glk7/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-iclb=
8/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@queue-idle:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-tglb5/igt@kms_sequence@queue-idle.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-t=
glb5/igt@kms_sequence@queue-idle.html">DMESG-WARN</a> ([i915#2868])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-skl3/igt@kms_setmode@clone-exclusive-cr=
tc.html">WARN</a> ([i915#2100])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl2/igt@kms_vblank@pipe-b-ts-continuat=
ion-dpms-suspend.html">DMESG-WARN</a> ([i915#165])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20462/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspen=
d.html">INCOMPLETE</a> ([i915#198] / [i915#2405])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl8/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-iclb4/igt@nouveau_crc@pipe-c-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl10/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shar=
d-skl5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl10/igt@perf@polling-small-buf.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-sk=
l6/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-apl2/igt@sysfs_clients@create.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20462/shard-kbl4/igt@sysfs_clients@fair-1.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0462/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-tglb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20462/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20462/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20462/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20462/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915=
#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20462/shard-skl9/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html">DMESG-=
WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20462/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20462/shard-apl1/igt@i915_suspend@fence-restore-tiled=
2untiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-0.html">DMESG-=
WARN</a> ([i915#3621]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20462/shard-iclb4/igt@kms_big_fb@linear-64bpp-rotate-0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.=
html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20462/shard-skl6/igt@kms_cursor_edge_walk@pipe-=
c-128x128-left-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#155] / [i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl1/igt@kms_fbcon_fbt@fbc-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi=
-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-glk7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interru=
ptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk6/igt@kms_fl=
ip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-glk5/igt@kms_flip@2x-=
flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL=
</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20462/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462=
/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20462/shard-skl6/igt@kms_plane_alpha_blend@pipe-a=
-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb7/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
462/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend=
.html">INCOMPLETE</a> ([i915#155]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20462/shard-kbl6/igt@kms_vblank@pipe-a-ts-conti=
nuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20462/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> ([i915#2684]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20462/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> (=
[i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10278/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10278/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0278/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#9=
2]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
462/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20462/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl3/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20462/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-kbl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20462/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [=
i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10278/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-apl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10278/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#180] /=
 [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20462/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-apl8/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20462/shard-apl3/igt@runner@aborted.html">FAIL</a>) ([i915#180] =
/ [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10278/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/shard-skl9/igt@runner@abo=
rted.html">FAIL</a>) ([i915#1814] / [i915#3002] / [i915#3363]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/shard-skl2/ig=
t@runner@aborted.html">FAIL</a> ([i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============6761521325643282040==--

--===============0503141298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0503141298==--
