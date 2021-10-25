Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4038043930E
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 11:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0ECC89CF2;
	Mon, 25 Oct 2021 09:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D926189CC1;
 Mon, 25 Oct 2021 09:54:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D211FAADD3;
 Mon, 25 Oct 2021 09:54:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1877021259191776828=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Oct 2021 09:54:06 -0000
Message-ID: <163515564683.17091.4794766720297580493@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211025071317.3393329-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20211025071317.3393329-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_PXP_support?=
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

--===============1877021259191776828==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable PXP support
URL   : https://patchwork.freedesktop.org/series/96232/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10782_full -> Patchwork_21434_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21434_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21434_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21434_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglb:         [PASS][1] -> [SKIP][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb5/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb1/igt@gem_pxp@hw-rejects-pxp-buffer.html

  
Known issues
------------

  Here are the changes found in Patchwork_21434_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3] ([i915#198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][4] ([i915#280])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][8] -> [SKIP][9] ([fdo#109271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#118])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk6/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][17] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#3323])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#3297])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gen3_render_mixed_blits:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#109289])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@gen3_render_mixed_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1436] / [i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#2856])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-glk:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#658])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111644] / [i915#1397] / [i915#2411])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#2521])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3777]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][31] ([i915#3743]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278] / [i915#3886])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb8/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3689]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-fast:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-skl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl10/igt@kms_color@pipe-c-ctm-0-75.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_color@pipe-c-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][46] ([i915#1319])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@kms_content_protection@srm.html
    - shard-apl:          NOTRUN -> [TIMEOUT][47] ([i915#1319])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][48] ([i915#2105])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl6/igt@kms_content_protection@uevent.html
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#111828])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3319]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-random:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3359])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-max-size-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][52] ([i915#2346])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#3528])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#79])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#2122])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][61] ([i915#2122]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-skl:          NOTRUN -> [INCOMPLETE][62] ([i915#3699])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2672])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2672])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][65] -> [DMESG-WARN][66] ([i915#2411])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +134 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#111825]) +11 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +155 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180]) +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [PASS][72] -> [FAIL][73] ([i915#1188]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#1187])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][77] -> [DMESG-WARN][78] ([i915#180]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][79] ([fdo#108145] / [i915#265]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][80] ([i915#265])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][81] ([fdo#108145] / [i915#265]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][82] -> [FAIL][83] ([fdo#108145] / [i915#265]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#112054])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#2920]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][89] -> [SKIP][90] ([fdo#109441]) +5 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb5/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@sprite_blt:
    - shard-glk:          NOTRUN -> [SKIP][91] ([fdo#109271]) +6 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk6/igt@kms_psr@sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#31])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk2/igt@kms_setmode@basic.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][94] -> [INCOMPLETE][95] ([i915#456]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#2530])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271]) +114 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@short-reads:
    - shard-skl:          [PASS][98] -> [FAIL][99] ([i915#51])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl9/igt@perf@short-reads.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@perf@short-reads.html

  * igt@prime_nv_api@nv_self_import:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109291]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@prime_nv_api@nv_self_import.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#2994]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2994]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@sysfs_clients@split-25.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2994])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl2/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][104] ([i915#658]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb8/igt@feature_discovery@psr2.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][106] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][108] ([i915#2842]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-apl:          [SKIP][110] ([fdo#109271]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][112] ([i915#2842]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][114] ([i915#118]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][116] ([i915#644]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-tglb:         [SKIP][118] ([i915#4270]) -> [PASS][119] +14 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb8/igt@gem_pxp@regular-baseline-src-copy-readible.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][120] ([i915#180]) -> [PASS][121] +4 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-apl8/igt@i915_suspend@sysfs-reader.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic:
    - shard-skl:          [DMESG-WARN][122] ([i915#1982]) -> [PASS][123] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl10/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][124] ([i915#2411] / [i915#456]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127] +10 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [FAIL][128] ([i915#2122]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl5/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-iclb:         [SKIP][130] ([i915#3701]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][132] ([i915#62] / [i915#92]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][134] ([fdo#108145] / [i915#265]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][136] ([fdo#109441]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][138] ([i915#2828] / [i915#456]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb7/igt@kms_vblank@pipe-c-ts-continua

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/index.html

--===============1877021259191776828==
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
<tr><td><b>Series:</b></td><td>Enable PXP support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96232/">https://patchwork.freedesktop.org/series/96232/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10782_full -&gt; Patchwork_21434_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21434_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21434_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21434_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_pxp@hw-rejects-pxp-buffer:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb5/igt@gem_pxp@hw-rejects-pxp-buffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb1/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21434_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk6/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl7/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@gen3_render_mixed_blits.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl10/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb8/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl10/igt@kms_color@pipe-c-ctm-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_color@pipe-c-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_color_chamelium@pipe-c-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl4/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl6/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_content_protection@uevent.html">SKIP</a> ([fdo#111828])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-max-size-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl2/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">INCOMPLETE</a> ([i915#3699])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +134 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +155 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html">SKIP</a> ([fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb5/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk6/igt@kms_psr@sprite_blt.html">SKIP</a> ([fdo#109271]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk3/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#456]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@nouveau_crc@pipe-a-source-rg.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +114 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl9/igt@perf@short-reads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl7/igt@perf@short-reads.html">FAIL</a> ([i915#51])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_self_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@prime_nv_api@nv_self_import.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl8/igt@sysfs_clients@split-25.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl2/igt@sysfs_clients@split-50.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb8/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#644]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb8/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#4270]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb2/igt@gem_pxp@regular-baseline-src-copy-readible.html">PASS</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-apl8/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-apl4/igt@i915_suspend@sysfs-reader.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl10/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl5/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#62] / [i915#92]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21434/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/shard-tglb7/igt@kms_vblank@pipe-c-ts-continua">INCOMPLETE</a> ([i915#2828] / [i915#456]) -&gt; [PASS][139]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1877021259191776828==--
