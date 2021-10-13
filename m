Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C38042BA23
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 10:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0051189C52;
	Wed, 13 Oct 2021 08:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 41A8B89C2C;
 Wed, 13 Oct 2021 08:25:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3916BAADD6;
 Wed, 13 Oct 2021 08:25:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0373408966713136215=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Oct 2021 08:25:44 -0000
Message-ID: <163411354420.10254.15827281892335040522@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211012221738.16029-1-andi@etezian.org>
In-Reply-To: <20211012221738.16029-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_=28rev12?=
 =?utf-8?q?=29?=
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

--===============0373408966713136215==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev12)
URL   : https://patchwork.freedesktop.org/series/75333/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10728_full -> Patchwork_21322_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21322_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21322_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21322_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_21322_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          NOTRUN -> [DMESG-WARN][3] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1099]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-snb6/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@gem_ctx_shared@q-in-order:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271]) +294 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-snb7/igt@gem_ctx_shared@q-in-order.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][10] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_schedule@u-submit-golden-slice@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][16] ([i915#3797])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl7/igt@gem_exec_schedule@u-submit-golden-slice@vecs0.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-glk6/igt@gem_exec_whisper@basic-fds-forked.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#4270])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271]) +100 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl6/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#3297])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#1902])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_query@query-topology-unsupported:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#109302])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@i915_query@query-topology-unsupported.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#111614]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][29] ([i915#3722])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +10 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#3689])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689] / [i915#3886]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-snb:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-snb7/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl6/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl1/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_concurrent@pipe-d:
    - shard-tglb:         NOTRUN -> [FAIL][41] ([i915#1385])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_concurrent@pipe-d.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][42] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#111828]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3359])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([i915#456])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109279] / [i915#3359]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][48] -> [INCOMPLETE][49] ([i915#2411] / [i915#4211])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +28 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
    - shard-snb:          [PASS][51] -> [SKIP][52] ([fdo#109271])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][53] -> [INCOMPLETE][54] ([i915#180] / [i915#636])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#79])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#198])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl3/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([i915#3701])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#111825]) +12 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglb:         [PASS][64] -> [INCOMPLETE][65] ([i915#1373] / [i915#2828])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-tglb8/igt@kms_hdr@bpc-switch-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][68] ([i915#265]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][69] ([i915#265]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#658])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#658])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-tglb:         NOTRUN -> [FAIL][74] ([i915#132] / [i915#3467])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109441]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][77] -> [DMESG-WARN][78] ([i915#180] / [i915#295])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl7/igt@kms_writeback@writeback-check-output.html
    - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#2437])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +178 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl3/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#2530]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#1542])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl7/igt@perf@blocking.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl1/igt@perf@blocking.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2994]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl6/igt@sysfs_clients@fair-7.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][86] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][88] ([i915#2842]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][90] ([i915#2842]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [FAIL][92] ([i915#2842]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][94] ([i915#454]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][96] ([i915#151]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [INCOMPLETE][98] ([i915#456] / [i915#750]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-tglb1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][100] ([i915#2521]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][102] ([i915#118]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][104] ([i915#79]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-tglb:         [INCOMPLETE][106] ([i915#2411] / [i915#456]) -> [PASS][107] +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][110] ([i915#2122]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-iclb:         [SKIP][112] ([i915#3701]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][114] ([i915#180]) -> [PASS][115] +4 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][116] ([fdo#108145] / [i915#265]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][118] ([fdo#109441]) -> [PASS][119] +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][120] ([i915#1542]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-glk2/igt@perf@polling-parameterized.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-glk3/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][122] ([i915#1722]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl9/igt@perf@polling-small-buf.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl7/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [FAIL][124] ([i915#4275]) -> [SKIP][125] ([i915#4281])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][126] ([i915#1804] / [i915#2684]) -> [WARN][127] ([i915#2684])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][128] ([i915#123]) -> [INCOMPLETE][129] ([i915#123] / [i915#146])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][130] ([i915#2920]) -> [SKIP][131] ([i915#658]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][132] ([i915#658]) -> [SKIP][133] ([i915#2920])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl6/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl2/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl3/igt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/index.html

--===============0373408966713136215==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: move remaining debugfs interfac=
es into gt (rev12)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/75333/">https://patchwork.freedesktop.org/series/75333/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21322/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21322/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10728_full -&gt; Patchwork_21322_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21322_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21322_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21322_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbc-suspend:<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1322/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</=
a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21322_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-apl8/igt@gem_ctx_isolation@preservation=
-s3@bcs0.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-snb6/igt@gem_ctx_persistence@engines-mi=
xed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-snb7/igt@gem_ctx_shared@q-in-order.html=
">SKIP</a> ([fdo#109271]) +294 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-kbl4/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-=
kbl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/sha=
rd-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@gem_exec_fair@basic-none-rrul=
@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_213=
22/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21322/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.=
html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10728/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/sh=
ard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-submit-golden-slice@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-skl7/igt@gem_exec_schedule@u-submit-gol=
den-slice@vecs0.html">INCOMPLETE</a> ([i915#3797])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-glk6/igt@gem_exec_whisper@basic-fds-forked.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2132=
2/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html">DMESG-WARN</a> ([i=
915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@gem_pxp@reject-modify-context=
-protection-off-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-kbl6/igt@gem_render_copy@x-tiled-to-veb=
ox-yf-tiled.html">SKIP</a> ([fdo#109271]) +100 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@gem_userptr_blits@unsync-unma=
p-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@i915_pm_lpsp@screens-disabled=
.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@i915_query@query-topology-uns=
upported.html">SKIP</a> ([fdo#109302])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-apl3/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-=
apl3/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@kms_big_fb@linear-8bpp-rotate=
-90.html">SKIP</a> ([fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_213=
22/shard-skl5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">DMESG-WARN</a> (=
[i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3722])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#111615]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-kbl4/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-apl3/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +10=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_ccs@pipe-b-bad-rotation-9=
0-yf_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_ccs@pipe-c-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_chamelium@dp-crc-multiple=
.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-snb7/igt@kms_chamelium@hdmi-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-kbl6/igt@kms_color_chamelium@pipe-b-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-apl1/igt@kms_color_chamelium@pipe-b-gam=
ma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-d:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_concurrent@pipe-d.html">F=
AIL</a> ([i915#1385])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-apl7/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@kms_content_protection@srm.ht=
ml">SKIP</a> ([fdo#111828]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-=
max-size-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21322/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE=
</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21322/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">INCOMPLETE=
</a> ([i915#2411] / [i915#4211])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> ([fdo#109271]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-render-until=
ed.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21322/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-render-un=
tiled.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-=
kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21322/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/=
shard-skl3/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> ([i915#=
198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21322/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21322/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytil=
e-to-32bpp-ytileccs.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#111825]) +12 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-tglb8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shar=
d-tglb7/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> ([i915#1373] / =
[i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-apl3/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21322/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-al=
pha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21322/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-al=
pha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-kbl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21322/shard-apl8/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar iss=
ues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21322/shard-iclb5/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-skl4/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@kms_psr@psr2_primary_blt.html=
">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/sh=
ard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21322/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21322/shard-apl7/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-apl3/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> ([fdo#109271]) +178 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@nouveau_crc@pipe-c-source-out=
p-inactive.html">SKIP</a> ([i915#2530]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl7/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl1/igt@per=
f@blocking.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-apl6/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2369] / [i915#3063] / [i915#3648]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21322/shard-tglb1/igt@gem_eio@unwedge-stress=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21322/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21322/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21322/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322=
/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html">INCOM=
PLETE</a> ([i915#151]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21322/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-tglb1/igt@i915_suspend@fence-restore-tiled2untiled.html=
">INCOMPLETE</a> ([i915#456] / [i915#750]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb8/igt@i915_suspend@fenc=
e-restore-tiled2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21322/shard-skl5/igt@kms_async_flips@alternate-sync-async=
-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMES=
G-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21322/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21322/shard-skl2/igt@kms_flip@flip-vs-expired-vb=
lank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1=
.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-tglb6/igt@kms_flip@fl=
ip-vs-suspend-interruptible@a-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21322/shard-apl7/igt@kms_flip@flip-vs-suspend-int=
erruptible@c-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21322/shard-skl7/igt@kms_flip@plain-flip-fb-re=
create-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21322/shard-iclb5/igt@kms_flip_scaled_crc@flip=
-64bpp-ytile-to-16bpp-ytile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21322/shard-kbl6/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-a.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21322/shard-skl5/igt@kms_plane_alpha_blend=
@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#=
109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21322/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-glk2/igt@perf@polling-parameterized.html">FAIL</a> ([i9=
15#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21322/shard-glk3/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl9/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1=
722]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1322/shard-skl7/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#427=
5]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_213=
22/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21322/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.=
html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html">INC=
OMPLETE</a> ([i915#123]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21322/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend=
.html">INCOMPLETE</a> ([i915#123] / [i915#146])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-2.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21322/shard-iclb7/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10728/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
3.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21322/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10728/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10728/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10728/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl6/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10728/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/shard-kbl7/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_107=
28/shard-kbl3/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180] =
/ [i915#1814] / [i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21322/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21322/shard-kbl1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21322/shard-kbl3/igt">FAIL</a>, [FAIL][147], [FAIL][148], [FAIL][149], =
[FAIL][150], [FAIL][151]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3=
002] / [i915#3363] / [i915#602] / [i915#92])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0373408966713136215==--
