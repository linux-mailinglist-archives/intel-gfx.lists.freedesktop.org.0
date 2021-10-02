Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D494741F9D2
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 06:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B896F48D;
	Sat,  2 Oct 2021 04:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3EB556F48D;
 Sat,  2 Oct 2021 04:34:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1DE7BA8836;
 Sat,  2 Oct 2021 04:34:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5421806285376267871=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 02 Oct 2021 04:34:05 -0000
Message-ID: <163314924507.26860.12151234658124010000@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211001155825.6762-1-matthew.brost@intel.com>
In-Reply-To: <20211001155825.6762-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_bug_in_user_proto-context_creation_that_leaked_con?=
 =?utf-8?q?texts_=28rev2=29?=
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

--===============5421806285376267871==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix bug in user proto-context creation that leaked contexts (rev2)
URL   : https://patchwork.freedesktop.org/series/94962/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10680_full -> Patchwork_21221_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_21221_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         NOTRUN -> [TIMEOUT][1] ([i915#2369] / [i915#3063] / [i915#3648])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         NOTRUN -> [TIMEOUT][2] ([i915#2369] / [i915#2481] / [i915#3070])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][3] ([i915#2846])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2842]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_params@no-bsd:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([fdo#109283])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@gem_exec_params@no-bsd.html
    - shard-iclb:         NOTRUN -> [SKIP][11] ([fdo#109283])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][12] -> [DMESG-WARN][13] ([i915#118] / [i915#95]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-glk:          NOTRUN -> [SKIP][14] ([fdo#109271]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109289])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#2856])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         NOTRUN -> [WARN][19] ([i915#1804] / [i915#2684])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#2411] / [i915#456] / [i915#750])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110725] / [fdo#111614])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3777]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111615])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#3689]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +14 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl7/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1982]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl3/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][36] ([i915#1319]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl6/igt@kms_content_protection@lic.html
    - shard-kbl:          NOTRUN -> [TIMEOUT][37] ([i915#1319])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][38] ([i915#2105])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [fdo#109279])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109279] / [i915#3359])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#3444])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3359])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +48 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2346] / [i915#533])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#2122])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109274])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#79]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][53] -> [FAIL][54] ([i915#79])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][57] ([i915#180]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#2122])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#2587])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([i915#3701])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#111825]) +8 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109280]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-tglb:         [PASS][68] -> [INCOMPLETE][69] ([i915#2411] / [i915#456])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#1188])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][73] -> [INCOMPLETE][74] ([i915#155] / [i915#794])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][75] ([fdo#108145] / [i915#265]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([fdo#108145] / [i915#265]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][78] ([i915#265])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#3536])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#2920])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         NOTRUN -> [FAIL][83] ([i915#132] / [i915#3467]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@kms_psr@psr2_dpms.html
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109441])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@suspend:
    - shard-tglb:         [PASS][87] -> [INCOMPLETE][88] ([i915#456]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb5/igt@kms_psr@suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][89] -> [INCOMPLETE][90] ([i915#2828] / [i915#456])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#533]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@nouveau_crc@pipe-a-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#2530])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@nouveau_crc@pipe-a-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +231 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@prime_nv_api@i915_nv_import_vs_close:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109291])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@prime_nv_api@i915_nv_import_vs_close.html

  * igt@sysfs_clients@busy:
    - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2994])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@sema-10:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl2/igt@sysfs_clients@sema-10.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [PASS][97] -> [FAIL][98] ([i915#1731])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +7 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [TIMEOUT][101] ([i915#3063]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb8/igt@gem_eio@in-flight-contexts-immediate.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          [DMESG-WARN][103] -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk8/igt@gem_eio@in-flight-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][105] ([i915#2846]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][107] ([i915#2842]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-apl:          [SKIP][109] ([fdo#109271]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][111] ([i915#2842]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][113] ([i915#2842]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_nop@basic-series:
    - shard-glk:          [DMESG-WARN][115] ([i915#118] / [i915#95]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk6/igt@gem_exec_nop@basic-series.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk8/igt@gem_exec_nop@basic-series.html

  * igt@i915_query@query-regions-garbage-items:
    - shard-skl:          [DMESG-WARN][117] ([i915#1982]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl8/igt@i915_query@query-regions-garbage-items.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl6/igt@i915_query@query-regions-garbage-items.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [INCOMPLETE][119] ([i915#2411] / [i915#456]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb7/igt@i915_suspend@forcewake.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][121] ([i915#180]) -> [PASS][122] +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][123] ([i915#180] / [i915#1982]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][125] ([i915#2122]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][127] ([i915#79]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [FAIL][129] ([i915#2122]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][131] ([fdo#108145] / [i915#265]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][133] ([i915#2842]) -> [FAIL][134] ([i915#2852])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-iclb:         [FAIL][135] -> [FAIL][136] ([i915#2842])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb8/igt@gem_exec_fair@basic-none@vcs0.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][137] ([i915#2680]) -> [WARN][138] ([i915#2684])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          [FAIL][139] ([i915#3743]) -> [FAIL][140] ([i915#3722])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][141] ([i915#155] / [i915#636]) -> [INCOMPLETE][142] ([i915#155] / [i915#180] / [i915#636])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][143] ([i915#658]) -> [SKIP][144] ([i915#2920]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb2/igt@kms_psr2_sf@primary-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/index.html

--===============5421806285376267871==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix bug in user proto-context creation that leaked contexts (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94962/">https://patchwork.freedesktop.org/series/94962/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10680_full -&gt; Patchwork_21221_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21221_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@gem_exec_params@no-bsd.html">SKIP</a> ([fdo#109283])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@gem_exec_params@no-bsd.html">SKIP</a> ([fdo#109283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html">SKIP</a> ([fdo#109271]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@gen7_exec_parse@load-register-reg.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb3/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> ([i915#2411] / [i915#456] / [i915#750])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl7/igt@kms_chamelium@dp-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl3/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl6/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl3/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-dpms.html">SKIP</a> ([fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271]) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([fdo#111825]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> ([i915#155] / [i915#794])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_plane_lowres@pipe-a-tiling-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@kms_psr@psr2_dpms.html">FAIL</a> ([i915#132] / [i915#3467]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb5/igt@kms_psr@suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@kms_psr@suspend.html">INCOMPLETE</a> ([i915#456]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@nouveau_crc@pipe-a-ctx-flip-detection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +231 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_vs_close:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@prime_nv_api@i915_nv_import_vs_close.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@sysfs_clients@busy.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl2/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL</a> ([i915#1731])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb8/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk8/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk7/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk4/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-series:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk6/igt@gem_exec_nop@basic-series.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk8/igt@gem_exec_nop@basic-series.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_query@query-regions-garbage-items:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl8/igt@i915_query@query-regions-garbage-items.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl6/igt@i915_query@query-regions-garbage-items.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-tglb6/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> ([i915#2680]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3722])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21221/shard-iclb2/igt@kms_psr2_sf@primary-">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5421806285376267871==--
