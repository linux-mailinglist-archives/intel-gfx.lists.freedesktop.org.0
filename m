Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E87422318
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 12:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3A26EB54;
	Tue,  5 Oct 2021 10:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 826446EB51;
 Tue,  5 Oct 2021 10:09:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7982FA0169;
 Tue,  5 Oct 2021 10:09:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2283953444170042327=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Oct 2021 10:09:44 -0000
Message-ID: <163342858448.19281.6877352369546504594@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211005065151.828922-1-bigeasy@linutronix.de>
In-Reply-To: <20211005065151.828922-1-bigeasy@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Increase_DRM=5FOBJECT=5FMAX=5FPROPERTY_by_18=2E?=
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

--===============2283953444170042327==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Increase DRM_OBJECT_MAX_PROPERTY by 18.
URL   : https://patchwork.freedesktop.org/series/95440/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10681_full -> Patchwork_21243_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_10681_full and Patchwork_21243_full:

### New IGT tests (11) ###

  * igt@gem_ctx_persistence@heartbeat-close:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.33] s

  * igt@gem_ctx_persistence@heartbeat-hang:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 1.48] s

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - Statuses : 6 pass(s)
    - Exec time: [1.17, 1.52] s

  * igt@gem_ctx_persistence@heartbeat-many:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_persistence@heartbeat-stop:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.37] s

  * igt@gem_exec_parallel@engines@userptr:
    - Statuses : 6 pass(s)
    - Exec time: [1.33, 3.39] s

  * igt@kms_async_flips@alternate-sync-async-flip:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.04] s

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - Statuses : 5 pass(s)
    - Exec time: [2.0, 2.00] s

  * igt@kms_async_flips@invalid-async-flip:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@kms_async_flips@test-cursor:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@kms_async_flips@test-time-stamp:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_21243_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][1] ([fdo#111827])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@feature_discovery@chamelium.html

  * igt@gem_ctx_persistence@idempotent:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-snb2/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         NOTRUN -> [TIMEOUT][3] ([i915#2369] / [i915#3063] / [i915#3648])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-skl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl2/igt@gem_exec_flush@basic-uc-ro-default.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl10/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_params@no-bsd:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([fdo#109283])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([fdo#112283])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][12] -> [DMESG-WARN][13] ([i915#118] / [i915#95]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#768])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109289]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@gen7_exec_parse@load-register-reg.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#1937])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         NOTRUN -> [WARN][17] ([i915#1804] / [i915#2684])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][18] ([i915#2684])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_query@query-topology-unsupported:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([fdo#109302])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@i915_query@query-topology-unsupported.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#2411] / [i915#456]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb2/igt@i915_suspend@forcewake.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb7/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#146] / [i915#198])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl1/igt@i915_suspend@sysfs-reader.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@invalid-async-flip (NEW):
    - {shard-rkl}:        [PASS][24] -> [SKIP][25] ([i915#1845])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-6/igt@kms_async_flips@invalid-async-flip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-2/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#110725] / [fdo#111614])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#111615])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#110723])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#3689]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-snb2/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3116])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - shard-kbl:          NOTRUN -> [FAIL][40] ([i915#3444])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
    - shard-snb:          NOTRUN -> [FAIL][41] ([i915#4024])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +6 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-tglb:         [PASS][44] -> [INCOMPLETE][45] ([i915#2411] / [i915#2828] / [i915#456])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#2828] / [i915#300])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3359]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109279] / [i915#3359]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-random:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3319])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-32x32-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +135 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278]) +6 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-dpms.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][53] -> [INCOMPLETE][54] ([i915#155] / [i915#636])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([i915#3701])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-snb:          NOTRUN -> [SKIP][57] ([fdo#109271]) +433 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
    - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#3701])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111825]) +12 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109280]) +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +40 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#1188]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-swap:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#1187])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][68] ([i915#180])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][69] ([i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][71] -> [FAIL][72] ([fdo#108145] / [i915#265]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#3536])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#2920])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2920])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         NOTRUN -> [FAIL][78] ([i915#132] / [i915#3467])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_sysfs_edid_timing:
    - shard-kbl:          NOTRUN -> [FAIL][81] ([IGT#2])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2437])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl2/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-a-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#2530]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@nouveau_crc@pipe-a-ctx-flip-detection.html

  * igt@prime_nv_api@i915_nv_import_vs_close:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109291])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@prime_nv_api@i915_nv_import_vs_close.html

  * igt@prime_nv_test@i915_blt_fill_nv_read:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109291])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@prime_nv_test@i915_blt_fill_nv_read.html

  * igt@prime_vgem@basic-userptr:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#3301])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109295])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@prime_vgem@fence-write-hang.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl7/igt@sysfs_clients@fair-1.html

  * igt@sysfs_heartbeat_interval@precise@vecs0:
    - shard-tglb:         [PASS][89] -> [FAIL][90] ([i915#1755])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb8/igt@sysfs_heartbeat_interval@precise@vecs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb5/igt@sysfs_heartbeat_interval@precise@vecs0.html
    - shard-apl:          [PASS][91] -> [FAIL][92] ([i915#1755])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-apl8/igt@sysfs_heartbeat_interval@precise@vecs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl6/igt@sysfs_heartbeat_interval@precise@vecs0.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {shard-rkl}:        [SKIP][93] ([i915#2582]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@fbdev@read.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@fbdev@read.html

  * igt@feature_discovery@psr2:
    - {shard-rkl}:        [SKIP][95] ([i915#658]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@feature_discovery@psr2.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@feature_discovery@psr2.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-iclb:         [TIMEOUT][97] ([i915#3070]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb3/igt@gem_eio@in-flight-contexts-immediate.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][99] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@gem_eio@unwedge-stress.html
    - {shard-rkl}:        [FAIL][101] ([i915#3115]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-1/igt@gem_eio@unwedge-stress.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - {shard-rkl}:        [FAIL][103] ([i915#2842]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [FAIL][105] ([i915#2842]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb4/igt@gem_exec_fair@basic-pace@bcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][107] ([i915#2842]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-kbl:          [SKIP][109] ([fdo#109271]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl1/igt@gem_exec_fair@basic-sync@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@gem_exec_reloc@basic-scanout@vecs0:
    - {shard-rkl}:        [SKIP][111] ([i915#3639]) -> [PASS][112] +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-iclb:         [INCOMPLETE][113] ([i915#1895]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority-all.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [INCOMPLETE][115] ([i915#456]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb7/igt@gem_workarounds@suspend-resume.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][117] ([fdo#109308]) -> [PASS][118] +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [DMESG-FAIL][119] ([i915#1021]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-6/igt@i915_selftest@live@gt_pm.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [DMESG-WARN][121] ([i915#180]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-apl7/igt@i915_suspend@debugfs-reader.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl1/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_async_flips@crc:
    - {shard-rkl}:        [SKIP][125] -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_async_flips@crc.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0:
    - {shard-rkl}:        [SKIP][127] ([i915#3721]) -> [PASS][128] +8 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][129] ([i915#118] / [i915#95]) -> [PASS][130] +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - {shard-rkl}:        [SKIP][131] ([i915#3638]) -> [PASS][132] +3 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - {shard-rkl}:        [SKIP][133] ([fdo#111614]) -> [PASS][134] +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][135] ([i915#1845]) -> [PASS][136] +35 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - {shard-rkl}:        [SKIP][137] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][138] +4 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/index.html

--===============2283953444170042327==
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
<tr><td><b>Series:</b></td><td>drm: Increase DRM_OBJECT_MAX_PROPERTY by 18.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95440/">https://patchwork.freedesktop.org/series/95440/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10681_full -&gt; Patchwork_21243_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10681_full and Patchwork_21243_full:</p>
<h3>New IGT tests (11)</h3>
<ul>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 1.48] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.17, 1.52] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.37] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.33, 3.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 2.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [2.0, 2.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21243_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@feature_discovery@chamelium.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-snb2/igt@gem_ctx_persistence@idempotent.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl2/igt@gem_exec_flush@basic-uc-ro-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl10/igt@gem_exec_flush@basic-uc-ro-default.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@gem_exec_params@no-bsd.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@gen7_exec_parse@load-register-reg.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@i915_query@query-topology-unsupported.html">SKIP</a> ([fdo#109302])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl1/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl3/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-6/igt@kms_async_flips@invalid-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-2/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> ([i915#1845])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-snb2/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@kms_chamelium@vga-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_color_chamelium@pipe-b-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_color_chamelium@pipe-d-ctm-negative.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">FAIL</a> ([i915#3444])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">FAIL</a> ([i915#4024])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) +6 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#2828] / [i915#456])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a> ([i915#2828] / [i915#300])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-32x32-random.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html">SKIP</a> ([fdo#109271]) +135 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-dpms.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271]) +433 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#3701])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#111825]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> ([i915#180])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@kms_psr@psr2_dpms.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl2/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@nouveau_crc@pipe-a-ctx-flip-detection.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_vs_close:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@prime_nv_api@i915_nv_import_vs_close.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_blt_fill_nv_read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@prime_nv_test@i915_blt_fill_nv_read.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl7/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vecs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb8/igt@sysfs_heartbeat_interval@precise@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb5/igt@sysfs_heartbeat_interval@precise@vecs0.html">FAIL</a> ([i915#1755])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-apl8/igt@sysfs_heartbeat_interval@precise@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl6/igt@sysfs_heartbeat_interval@precise@vecs0.html">FAIL</a> ([i915#1755])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@fbdev@read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@fbdev@read.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@feature_discovery@psr2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb3/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb6/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-1/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#3115]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-1/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb4/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl1/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html">SKIP</a> ([i915#3639]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority-all.html">INCOMPLETE</a> ([i915#1895]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-tglb7/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-tglb6/igt@gem_workarounds@suspend-resume.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1021]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-apl7/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-apl1/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_async_flips@crc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_async_flips@crc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#3721]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKIP</a> ([i915#3638]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-90:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">SKIP</a> ([fdo#111614]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21243/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/shard-rkl-2/igt@">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; [PASS][138] +4 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2283953444170042327==--
