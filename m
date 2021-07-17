Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CC33CC25C
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 12:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D8389FE6;
	Sat, 17 Jul 2021 10:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 673AD89EAC;
 Sat, 17 Jul 2021 10:03:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5EFB7AA01E;
 Sat, 17 Jul 2021 10:03:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiyu Yang" <xiyuyang19@fudan.edu.cn>
Date: Sat, 17 Jul 2021 10:03:52 -0000
Message-ID: <162651623236.18551.9526320801883139960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1626432098-27626-1-git-send-email-xiyuyang19@fudan.edu.cn>
In-Reply-To: <1626432098-27626-1-git-send-email-xiyuyang19@fudan.edu.cn>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_Convert_from_atomic=5Ft_to_refcount=5Ft_on_intel?=
 =?utf-8?q?=5Fvgpu=5Fppgtt=5Fspt-=3Erefcount?=
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
Content-Type: multipart/mixed; boundary="===============1789257506=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1789257506==
Content-Type: multipart/alternative;
 boundary="===============1716722755623960407=="

--===============1716722755623960407==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: Convert from atomic_t to refcount_t on intel_vgpu_ppgtt_spt->refcount
URL   : https://patchwork.freedesktop.org/series/92648/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10346_full -> Patchwork_20635_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20635_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20635_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20635_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gen9_exec_parse@bb-start-far:
    - shard-iclb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl7/igt@i915_suspend@debugfs-reader.html

  
Known issues
------------

  Here are the changes found in Patchwork_20635_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-tglb:         NOTRUN -> [FAIL][3] ([i915#2842]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2842]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271]) +147 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_whisper@basic-sync-all:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl3/igt@gem_exec_whisper@basic-sync-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl7/igt@gem_exec_whisper@basic-sync-all.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][11] ([i915#2658])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
    - shard-kbl:          NOTRUN -> [WARN][12] ([i915#2658])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#768])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-iclb:         NOTRUN -> [SKIP][14] ([fdo#109289]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@gen7_exec_parse@chained-batch.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-iclb:         [PASS][15] -> [DMESG-WARN][16] ([i915#3698])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb3/igt@i915_pm_dc@dc5-psr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb2/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_lpsp@kms-lpsp:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271]) +110 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl1/igt@i915_pm_lpsp@kms-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#110892])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2521])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][23] ([i915#3722])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-iclb:         [PASS][24] -> [DMESG-WARN][25] ([i915#3621])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#110723]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [FAIL][30] ([i915#3678])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl2/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278] / [i915#1149]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_color@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl1/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3319]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
    - shard-glk:          NOTRUN -> [SKIP][40] ([fdo#109271]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-glk7/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109279] / [i915#3359]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278]) +11 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-dpms.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109274] / [fdo#109278])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#426])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109274])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +27 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109280]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111825]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          NOTRUN -> [FAIL][49] ([i915#1188])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#533]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#3536])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109642] / [fdo#111068] / [i915#658])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109441])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109441]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
    - shard-tglb:         NOTRUN -> [FAIL][64] ([i915#132] / [i915#3467])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vrr@flip-basic:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109502])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#2437])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-b-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#2530])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@nouveau_crc@pipe-b-source-rg.html

  * igt@nouveau_crc@pipe-d-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#2530])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@nouveau_crc@pipe-d-source-outp-inactive.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +139 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_nv_test@i915_import_gtt_mmap:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109291]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb1/igt@prime_nv_test@i915_import_gtt_mmap.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2994])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl1/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2994])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl2/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][73] ([i915#2842]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [FAIL][75] ([i915#2842]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][77] ([i915#2849]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [FAIL][79] ([i915#307]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][85] ([i915#300]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][87] ([i915#2346] / [i915#533]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-panning-interruptible@d-edp1:
    - shard-tglb:         [INCOMPLETE][89] -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-tglb6/igt@kms_flip@flip-vs-panning-interruptible@d-edp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_flip@flip-vs-panning-interruptible@d-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][91] ([i915#198] / [i915#2910]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][93] ([i915#1188]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-iclb:         [INCOMPLETE][95] ([i915#1185]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
    - shard-iclb:         [SKIP][97] ([fdo#109278]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb7/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][99] ([fdo#108145] / [i915#265]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-skl:          [FAIL][101] -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl9/igt@kms_prime@basic-crc@second-to-first.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl8/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][105] ([i915#1722]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl2/igt@perf@polling-small-buf.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl1/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][107] ([i915#1804] / [i915#2684]) -> [WARN][108] ([i915#2684])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][109] ([i915#658]) -> [SKIP][110] ([i915#2920]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][111] ([i915#2920]) -> [SKIP][112] ([i915#658]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][113], [FAIL][114], [FAIL][115]) ([i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][116], [FAIL][117]) ([i915#3002] / [i915#3363])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl4/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl3/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl3/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl1/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl1/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121]) ([i915#1814] / [i915#3002]) -> ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127]) ([i915#1814] / [i915#3002] / [i915#3702])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb7/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb5/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][132], [FAIL][133], [FAIL][134]) ([i915#180] / [i915#1814] / [i915#3363])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl3/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl3/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][135], [FAIL][136]) ([i915#3002] / [i915#3363]) -> ([FAIL][137], [FAIL][138], [FAIL][139]) ([i915#2029] / [i915#3002] / [i915#3363])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl2/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109502]: https://bugs.freedesktop.org/show_bug.cgi?id=109502
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/index.html

--===============1716722755623960407==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: Convert from atomic_t to refco=
unt_t on intel_vgpu_ppgtt_spt-&gt;refcount</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/92648/">https://patchwork.freedesktop.org/series/92648/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20635/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20635/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10346_full -&gt; Patchwork_20635_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20635_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20635_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20635_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@gen9_exec_parse@bb-start-far.=
html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-apl7/igt@i915_suspend@debugfs-reader.ht=
ml">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20635_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@gem_exec_fair@basic-none@vcs0=
.html">FAIL</a> ([i915#2842]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
635/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
635/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i91=
5#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-snb2/igt@gem_exec_flush@basic-batch-ker=
nel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +147 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-sync-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl3/igt@gem_exec_whisper@basic-sync-all.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/=
shard-skl7/igt@gem_exec_whisper@basic-sync-all.html">DMESG-WARN</a> ([i915#=
1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20635/shard-snb2/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20635/shard-kbl4/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@gem_render_copy@y-tiled-mc-cc=
s-to-yf-tiled-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@gen7_exec_parse@chained-batch=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb3/igt@i915_pm_dc@dc5-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb2/=
igt@i915_pm_dc@dc5-psr.html">DMESG-WARN</a> ([i915#3698])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl1/igt@i915_pm_lpsp@kms-lpsp.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a>) +110 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp-=
stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110892">fdo#110892</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-apl1/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-=
apl2/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20635/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">FA=
IL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3722])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_206=
35/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> (=
[i915#3621])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl1/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> ([i915#3678])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary-ba=
sic-yf_tiled_ccs.html">SKIP</a> ([i915#3689]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-apl2/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_chamelium@dp-hpd-storm-di=
sable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@kms_chamelium@hdmi-aspect-rati=
o.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_chamelium@vga-edid-read.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_color@pipe-d-ctm-negative=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1149">i915#1149</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl1/igt@kms_color_chamelium@pipe-inval=
id-ctm-matrix-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-sliding.html">SKIP</a> ([i915#3319]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-glk7/igt@kms_cursor_crc@pipe-c-cursor-3=
2x32-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109279">fdo#109279</a> / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-=
dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109278">fdo#109278</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_flip@2x-flip-vs-modeset-v=
s-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +4 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl4/igt@kms_hdr@bpc-switch-suspend.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118=
8">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-apl3/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl3/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20635/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-=
min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_plane_lowres@pipe-c-tilin=
g-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-apl3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-kbl4/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-icl=
b8/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10346/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/s=
hard-iclb7/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_psr@psr2_primary_page_flip=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/132">i915#132</a> / [i915#3467])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_vrr@flip-basic.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109502">fdo=
#109502</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@kms_writeback@writeback-inval=
id-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@nouveau_crc@pipe-b-source-rg.=
html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb7/igt@nouveau_crc@pipe-d-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-apl2/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +139 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_gtt_mmap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-tglb1/igt@prime_nv_test@i915_import_gtt=
_mmap.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109291">fdo#109291</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-skl1/igt@sysfs_clients@pidname.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-apl2/igt@sysfs_clients@recycle-many.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20635/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20635/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20635/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> (=
[i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20635/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20635/shard-apl1/igt@gem_workarounds@suspend-resume-con=
text.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20635/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INC=
OMPLETE</a> ([i915#300]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20635/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl3/igt=
@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@d-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-tglb6/igt@kms_flip@flip-vs-panning-interruptible@d-edp1=
.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20635/shard-tglb7/igt@kms_flip@flip-vs-panning-interruptible=
@d-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1=
.html">INCOMPLETE</a> ([i915#198] / [i915#2910]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl1/igt@kms_flip@fli=
p-vs-suspend-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/sh=
ard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1185">i915#1185</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20635/shard-iclb8/igt@kms_pipe_crc_basic@suspend-read-crc=
-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb2/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-prem=
ult-vs-constant.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20635/shard-iclb7/igt@kms_plane_alpha_blend=
@pipe-b-coverage-vs-premult-vs-constant.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20635/shard-skl5/igt@kms_plane_alpha_blend@pipe-c=
-coverage-7efc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@second-to-first:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl9/igt@kms_prime@basic-crc@second-to-first.html">FAIL=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
635/shard-skl8/igt@kms_prime@basic-crc@second-to-first.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20635/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl2/igt@perf@polling-small-buf.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/sha=
rd-skl1/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20635/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20635/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
2.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20635/shard-iclb8/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10346/shard-kbl3/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i9=
15#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20635/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-kbl1/i=
gt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10346/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb1/igt@runner@ab=
orted.html">FAIL</a>) ([i915#1814] / [i915#3002]) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb5/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20635/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb1/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20635/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-iclb8/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20635/shard-iclb2/igt@runner@aborted.html">FAIL</a>) ([=
i915#1814] / [i915#3002] / [i915#3702])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10346/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl1/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#180] / [i915#3002] / [i915#3363]) -&gt; (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-a=
pl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20635/shard-apl2/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shar=
d-apl3/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1814] / [i915=
#3363])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10346/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl1/igt@runner@abo=
rted.html">FAIL</a>) ([i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20635/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20635/shard-skl2/igt@runner@a=
borted.html">FAIL</a>) ([i915#2029] / [i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>
<p>[</p>

</body>
</html>

--===============1716722755623960407==--

--===============1789257506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1789257506==--
