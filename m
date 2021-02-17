Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4EC31E2E7
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 00:05:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDAAE6E81A;
	Wed, 17 Feb 2021 23:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75E496E819;
 Wed, 17 Feb 2021 23:05:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B9FCA3ECB;
 Wed, 17 Feb 2021 23:05:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 17 Feb 2021 23:05:01 -0000
Message-ID: <161360310140.25001.4133207397807469497@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210217025337.1929015-1-lyude@redhat.com>
In-Reply-To: <20210217025337.1929015-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=5D_drm/i915/gen9bc=3A_Handle_TGP_PCH_du?=
 =?utf-8?q?ring_suspend/resume_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1936717515=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1936717515==
Content-Type: multipart/alternative;
 boundary="===============8220616930499816387=="

--===============8220616930499816387==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v4] drm/i915/gen9bc: Handle TGP PCH during suspend/resume (rev2)
URL   : https://patchwork.freedesktop.org/series/87148/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9783_full -> Patchwork_19697_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19697_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl4/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb6/igt@gem_ctx_persistence@process.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1037] / [i915#198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl9/igt@gem_eio@in-flight-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          NOTRUN -> [FAIL][5] ([i915#2846])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][14] ([i915#2389]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-apl:          NOTRUN -> [TIMEOUT][15] ([i915#1729])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl3/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][16] ([i915#2389]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1610] / [i915#2803])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-apl:          NOTRUN -> [DMESG-WARN][19] ([i915#1610])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl3/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][20] ([i915#2658]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271]) +29 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][22] ([i915#3002])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][23] ([i915#2724])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb6/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][24] ([i915#2502] / [i915#2667])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#112306])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][26] ([i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#1937])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#1937])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_selftest@live@hangcheck:
    - shard-skl:          NOTRUN -> [INCOMPLETE][29] ([i915#2782])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110723])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_joiner@basic:
    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#2705])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl2/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-c-bad-rotation-90:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111304])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_ccs@pipe-c-bad-rotation-90.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-glk:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [PASS][36] -> [DMESG-WARN][37] ([i915#1982])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl9/igt@kms_color@pipe-c-ctm-0-5.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl3/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +24 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][42] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][43] ([i915#2105])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          NOTRUN -> [FAIL][44] ([i915#54])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-apl:          NOTRUN -> [FAIL][45] ([i915#54])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#54]) +7 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109274] / [fdo#109278])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-glk:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109278]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][52] -> [FAIL][53] ([i915#2122])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@a-edp1:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2122]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl8/igt@kms_flip@blocking-wf_vblank@a-edp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl3/igt@kms_flip@blocking-wf_vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][56] ([i915#2122]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-kbl:          NOTRUN -> [FAIL][57] ([i915#2641])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2642])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
    - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2642])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][60] ([i915#2641])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2672])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +14 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +7 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +206 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +193 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][67] ([i915#265])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][69] ([i915#265]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +6 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109642] / [fdo#111068] / [i915#658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][76] -> [SKIP][77] ([fdo#109441]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb2/igt@kms_psr@psr2_basic.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109441])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][79] ([IGT#2])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - shard-snb:          NOTRUN -> [SKIP][80] ([fdo#109271]) +296 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb6/igt@kms_vblank@pipe-d-query-forked-hang.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2437])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#2530])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][83] -> [FAIL][84] ([i915#1542])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb1/igt@perf@polling-parameterized.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb5/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test3_4:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109291])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@prime_nv_pcopy@test3_4.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [PASS][86] -> [INCOMPLETE][87] ([i915#409])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb1/igt@prime_vgem@sync@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          [PASS][88] -> [FAIL][89] ([i915#3028])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-apl6/igt@sysfs_clients@recycle.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl3/igt@sysfs_clients@recycle.html
    - shard-tglb:         [PASS][90] -> [FAIL][91] ([i915#3028])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb8/igt@sysfs_clients@recycle.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb3/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-snb:          NOTRUN -> [FAIL][92] ([i915#3028])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb5/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-10@bcs0:
    - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3026])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@sysfs_clients@split-10@bcs0.html

  * igt@sysfs_clients@split-10@vcs0:
    - shard-skl:          [PASS][94] -> [SKIP][95] ([fdo#109271] / [i915#3026]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl3/igt@sysfs_clients@split-10@vcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl4/igt@sysfs_clients@split-10@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [TIMEOUT][96] ([i915#2918]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][98] ([i915#1037] / [i915#3063]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][100] ([i915#2842]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][102] ([i915#2842]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-iclb:         [FAIL][104] ([i915#2842]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@u-fairslice-all:
    - shard-skl:          [DMESG-WARN][106] ([i915#1610] / [i915#1982] / [i915#2803]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl2/igt@gem_exec_schedule@u-fairslice-all.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@gem_exec_schedule@u-fairslice-all.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-skl:          [DMESG-WARN][108] ([i915#1610] / [i915#2803]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl4/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl10/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@i915_selftest@live@client:
    - shard-glk:          [DMESG-FAIL][110] ([i915#3047]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk8/igt@i915_selftest@live@client.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk4/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-skl:          [INCOMPLETE][112] ([i915#198] / [i915#2782]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl1/igt@i915_selftest@live@gem_contexts.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl6/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][114] ([i915#2597]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb1/igt@kms_async_flips@test-time-stamp.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb7/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][116] ([i915#54]) -> [PASS][117] +4 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-tglb:         [FAIL][118] ([i915#2346]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][120] ([i915#2598]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][122] ([i915#79]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [FAIL][124] ([i915#2122]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl10/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl5/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][126] ([i915#1188]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl5/igt@kms_hdr@bpc-switch.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][128] ([fdo#108145] / [i915#265]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][130] ([fdo#109441]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@perf_pmu@rc6-suspend:
    - shard-apl:          [DMESG-WARN][132] ([i915#180]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-apl1/igt@perf_pmu@rc6-suspend.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@perf_pmu@rc6-suspend.html

  * igt@sysfs_clients@busy@bcs0:
    - shard-glk:          [FAIL][134] ([i915#3019]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk1/igt@sysfs_clients@busy@bcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk5/igt@sysfs_clients@busy@bcs0.html

  * igt@sysfs_clients@recycle-many:
    - shard-iclb:         [FAIL][136] ([i915#3028]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb2/igt@sysfs_clients@recycle-many.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-25@vecs0:
    - shard-skl:          [SKIP][138] ([fdo#109271]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl8/igt@sysfs_clients@sema-25@vecs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl2/igt@sysfs_clients@sema-25@vecs0.html

  * igt@sysfs_heartbeat_interval@precise@rcs0:
    - shard-kbl:          [INCOMPLETE][140] -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-kbl2/igt@sysfs_heartbeat_interval@precise@rcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl2/igt@sysfs_heartbeat_interval@precise@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][142] ([i915#2681] / [i915#2684]) -> [WARN][143] ([i915#1804] / [i915#2684])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][144] ([i915#1804]

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/index.html

--===============8220616930499816387==
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
<tr><td><b>Series:</b></td><td>series starting with [v4] drm/i915/gen9bc: Handle TGP PCH during suspend/resume (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87148/">https://patchwork.freedesktop.org/series/87148/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9783_full -&gt; Patchwork_19697_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19697_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl4/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb6/igt@gem_ctx_persistence@process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl9/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl3/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> ([i915#1037] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl3/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#1729])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl3/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a> ([i915#1610])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl2/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([fdo#109271]) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl2/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_ccs@pipe-c-bad-rotation-90.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl9/igt@kms_color@pipe-c-ctm-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl3/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl3/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl1/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">FAIL</a> ([i915#54]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl8/igt@kms_flip@blocking-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl3/igt@kms_flip@blocking-wf_vblank@a-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack.html">SKIP</a> ([fdo#109271]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +206 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +193 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@kms_psr@psr2_basic.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb6/igt@kms_vblank@pipe-d-query-forked-hang.html">SKIP</a> ([fdo#109271]) +296 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl1/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb1/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb8/igt@prime_nv_pcopy@test3_4.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb1/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i915#409])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-apl6/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl3/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb8/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb3/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-snb5/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@bcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl6/igt@sysfs_clients@split-10@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3026])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl3/igt@sysfs_clients@split-10@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl4/igt@sysfs_clients@split-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915#3026]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</a> ([i915#2918]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#1037] / [i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl2/igt@gem_exec_schedule@u-fairslice-all.html">DMESG-WARN</a> ([i915#1610] / [i915#1982] / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl9/igt@gem_exec_schedule@u-fairslice-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl4/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl10/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk8/igt@i915_selftest@live@client.html">DMESG-FAIL</a> ([i915#3047]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk4/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> ([i915#198] / [i915#2782]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl6/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb7/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#2598]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl10/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl5/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl5/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl7/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-apl1/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-apl6/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@bcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-glk1/igt@sysfs_clients@busy@bcs0.html">FAIL</a> ([i915#3019]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-glk5/igt@sysfs_clients@busy@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb2/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb3/igt@sysfs_clients@recycle-many.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-skl8/igt@sysfs_clients@sema-25@vecs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-skl2/igt@sysfs_clients@sema-25@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-kbl2/igt@sysfs_heartbeat_interval@precise@rcs0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-kbl2/igt@sysfs_heartbeat_interval@precise@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19697/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         [WARN][144] ([i915#1804]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8220616930499816387==--

--===============1936717515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1936717515==--
