Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCEB41D55D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 10:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2566E3F9;
	Thu, 30 Sep 2021 08:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EEFE6E32A;
 Thu, 30 Sep 2021 08:24:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 460A3A47EA;
 Thu, 30 Sep 2021 08:24:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8477613962051814490=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Sep 2021 08:24:14 -0000
Message-ID: <163299025424.18253.5289900773136320616@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210930063521.566982-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210930063521.566982-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Rework_object_initialization_slightly_=28rev3=29?=
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

--===============8477613962051814490==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Rework object initialization slightly (rev3)
URL   : https://patchwork.freedesktop.org/series/95107/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10660_full -> Patchwork_21198_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21198_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21198_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21198_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_create@create-clear:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/igt@gem_create@create-clear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb3/igt@gem_create@create-clear.html

  
Known issues
------------

  Here are the changes found in Patchwork_21198_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][3] ([i915#280]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb3/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         NOTRUN -> [TIMEOUT][4] ([i915#2369] / [i915#3063] / [i915#3648])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][5] ([i915#2846])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][6] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb1/igt@gem_exec_fair@basic-pace@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([fdo#109283])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([fdo#112283])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118] / [i915#95]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_pread@exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][19] ([i915#2658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl6/igt@gem_pread@exhaustion.html

  * igt@gen3_render_tiledy_blits:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#109289]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#2856]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb1/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#1937])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#109506] / [i915#2411])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl3/igt@i915_pm_rpm@modeset-lpsp.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl9/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][26] ([i915#2373])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][27] ([i915#1759] / [i915#2291])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@i915_selftest@live@gt_pm.html
    - shard-iclb:         [PASS][28] -> [INCOMPLETE][29] ([i915#3873])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/igt@i915_selftest@live@gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb6/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl8/igt@i915_suspend@debugfs-reader.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl3/igt@i915_suspend@debugfs-reader.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][32] ([i915#4224])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl9/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111614]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][34] ([i915#3722]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111615]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +141 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3689] / [i915#3886]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886]) +5 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886]) +6 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +94 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#111828])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_content_protection@mei_interface.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][51] ([i915#1319])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109279] / [i915#3359]) +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3359]) +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#3319])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +117 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][57] -> [INCOMPLETE][58] ([i915#155] / [i915#180] / [i915#636])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#111825]) +19 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [PASS][60] -> [FAIL][61] ([i915#79])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180]) +6 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1:
    - shard-kbl:          [PASS][64] -> [FAIL][65] ([i915#2122])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#2587])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2672])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][68] -> [INCOMPLETE][69] ([i915#456]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
    - shard-kbl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#3536]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2920]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         NOTRUN -> [FAIL][80] ([i915#132] / [i915#3467]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][81] -> [SKIP][82] ([fdo#109441]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][83] ([IGT#2])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_sysfs_edid_timing.html
    - shard-kbl:          NOTRUN -> [FAIL][84] ([IGT#2])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_sysfs_edid_timing.html
    - shard-skl:          NOTRUN -> [FAIL][85] ([IGT#2])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#109502])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#2437]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2437])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl6/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#2530])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][90] -> [FAIL][91] ([i915#1722])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl6/igt@perf@polling-small-buf.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl10/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#109291]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@prime_nv_api@i915_self_import_to_different_fd.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2994]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#2994])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][97] ([i915#658]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb8/igt@feature_discovery@psr2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-tglb:         [INCOMPLETE][99] ([i915#1373]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][101] ([i915#2842]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][103] ([i915#2842]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [FAIL][105] ([i915#2849]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@dr1-dirt:
    - shard-skl:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl4/igt@gem_exec_params@dr1-dirt.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl6/igt@gem_exec_params@dr1-dirt.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][109] ([i915#2190]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][111] ([i915#644]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114] +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl1/igt@gem_softpin@noreloc-s3.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [INCOMPLETE][115] ([i915#198] / [i915#4173]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl2/igt@gem_workarounds@suspend-resume-context.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][117] ([i915#454]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [INCOMPLETE][119] ([i915#456]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@i915_suspend@forcewake.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][121] ([i915#118] / [i915#95]) -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][123] ([i915#2346] / [i915#533]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][125] ([i915#2122]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [INCOMPLETE][127] ([i915#2411] / [i915#456]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [DMESG-WARN][129] ([i915#180]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][131] ([fdo#108145] / [i915#265]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - shard-glk:          [FAIL][133] ([i915#1888]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk7/igt@kms_plane_cursor@pipe-c-primary-size-64.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk6/igt@kms_plane_cursor@pipe-c-primary-size-64.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][135] ([fdo#109441]) -> [PASS][136] +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          [FAIL][137] ([i915#3722]) -> [FAIL][138] ([i915#3743])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][139] ([i915#658]) -> [S

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/index.html

--===============8477613962051814490==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Rework object initialization slightly (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95107/">https://patchwork.freedesktop.org/series/95107/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10660_full -&gt; Patchwork_21198_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21198_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21198_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21198_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_create@create-clear:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/igt@gem_create@create-clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb3/igt@gem_create@create-clear.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21198_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb3/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@gem_exec_params@no-blt.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@gen3_render_tiledy_blits.html">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([fdo#109506] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl3/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl9/igt@i915_pm_rpm@modeset-lpsp.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1759] / [i915#2291])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb6/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a> ([i915#3873])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl8/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl3/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl9/igt@kms_async_flips@crc.html">FAIL</a> ([i915#4224])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a> ([fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3722]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> ([fdo#111615]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +141 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html">SKIP</a> ([i915#3689]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +94 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_chamelium@hdmi-audio-edid.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_content_protection@mei_interface.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html">SKIP</a> ([fdo#109279] / [i915#3359]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html">SKIP</a> ([i915#3359]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271]) +117 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([fdo#111825]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> ([i915#456]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_plane_lowres@pipe-b-tiling-x.html">SKIP</a> ([i915#3536]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_psr@psr2_dpms.html">FAIL</a> ([i915#132] / [i915#3467]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl3/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_vrr@flip-suspend.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl6/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl6/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl10/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb8/igt@prime_nv_api@i915_self_import_to_different_fd.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl7/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@sysfs_clients@fair-3.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@sysfs_clients@split-25.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb8/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLETE</a> ([i915#1373]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@dr1-dirt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl4/igt@gem_exec_params@dr1-dirt.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl6/igt@gem_exec_params@dr1-dirt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#644]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl1/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-kbl2/igt@gem_softpin@noreloc-s3.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl2/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE</a> ([i915#198] / [i915#4173]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl2/igt@gem_workarounds@suspend-resume-context.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-tglb6/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-64:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk7/igt@kms_plane_cursor@pipe-c-primary-size-64.html">FAIL</a> ([i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-glk6/igt@kms_plane_cursor@pipe-c-primary-size-64.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb6/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3722]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21198/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         [SKIP][139] ([i915#658]) -&gt; [S</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8477613962051814490==--
