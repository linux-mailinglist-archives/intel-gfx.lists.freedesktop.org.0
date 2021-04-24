Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 740C9369DAB
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 02:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B3C6ECD4;
	Sat, 24 Apr 2021 00:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C377A6ECCE;
 Sat, 24 Apr 2021 00:13:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A564A7DFC;
 Sat, 24 Apr 2021 00:13:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Sat, 24 Apr 2021 00:13:11 -0000
Message-ID: <161922319162.2853.5434355654482201734@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210423184309.207645-1-lyude@redhat.com>
In-Reply-To: <20210423184309.207645-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29=29_in_?=
 =?utf-8?q?DP_helpers_=28rev7=29?=
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
Content-Type: multipart/mixed; boundary="===============1599088569=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1599088569==
Content-Type: multipart/alternative;
 boundary="===============5421672801979401849=="

--===============5421672801979401849==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev7)
URL   : https://patchwork.freedesktop.org/series/87242/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10005_full -> Patchwork_19982_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19982_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19982_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19982_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-immediate:
    - shard-skl:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl8/igt@gem_eio@in-flight-immediate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl7/igt@gem_eio@in-flight-immediate.html

  
Known issues
------------

  Here are the changes found in Patchwork_19982_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@prime:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4] ([i915#2055] / [i915#2944])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk3/igt@drm_import_export@prime.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk6/igt@drm_import_export@prime.html

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#1888] / [i915#3160])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk8/igt@gem_create@create-clear.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk9/igt@gem_create@create-clear.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-snb2/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#118] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk6/igt@gem_ctx_shared@q-smoketest-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk1/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][10] -> [TIMEOUT][11] ([i915#2369] / [i915#2481] / [i915#3070])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb1/igt@gem_eio@unwedge-stress.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#3160]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@gem_mmap_offset@clear.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl8/igt@gem_mmap_offset@clear.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][18] ([i915#3318])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_module_load@reload:
    - shard-iclb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb8/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb6/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#454])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#2705])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl7/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111304])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl10/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][27] ([i915#1319])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][28] ([i915#2346] / [i915#533])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#2122])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ac-hdmi-a1-hdmi-a2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][35] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#146] / [i915#198])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#2122])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#2642])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#49])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
    - shard-kbl:          [PASS][43] -> [FAIL][44] ([i915#2546] / [i915#49])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#49])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-skl:          [PASS][47] -> [DMESG-WARN][48] ([i915#1982]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-snb:          NOTRUN -> [SKIP][49] ([fdo#109271]) +201 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-snb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#49])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +61 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#1188])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl4/igt@kms_hdr@bpc-switch.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([fdo#103375])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][65] ([i915#31])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-snb2/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][66] ([IGT#2])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl10/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][67] -> [INCOMPLETE][68] ([i915#198] / [i915#2828])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +117 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl6/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#1722])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@perf@polling-small-buf.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl8/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2994]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl8/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl10/igt@sysfs_clients@fair-3.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#1731])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl4/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          [INCOMPLETE][76] ([i915#198] / [i915#2369] / [i915#2624]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@gem_exec_capture@pi@vecs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl7/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][78] ([i915#2846]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-kbl7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][80] ([fdo#109271]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][82] ([i915#2842]) -> [PASS][83] +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][84] ([i915#2842]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [DMESG-WARN][86] ([i915#118] / [i915#95]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk1/igt@gem_exec_whisper@basic-fds.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk5/igt@gem_exec_whisper@basic-fds.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [FAIL][88] ([i915#307]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][90] ([i915#1436] / [i915#716]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][92] ([i915#2574]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb8/igt@kms_async_flips@test-time-stamp.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-tglb2/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_atomic@plane-primary-legacy:
    - shard-snb:          [SKIP][94] ([fdo#109271]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-snb2/igt@kms_atomic@plane-primary-legacy.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-snb5/igt@kms_atomic@plane-primary-legacy.html

  * igt@kms_ccs@pipe-a-random-ccs-data:
    - shard-iclb:         [DMESG-WARN][96] ([i915#3219]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb5/igt@kms_ccs@pipe-a-random-ccs-data.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][98] ([i915#54]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:
    - shard-glk:          [DMESG-FAIL][100] ([i915#118] / [i915#70] / [i915#95]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-iclb:         [SKIP][102] ([i915#668]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb1/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][104] ([i915#1188]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][106] ([fdo#108145] / [i915#265]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][108] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][110] ([fdo#109441]) -> [PASS][111] +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][114] ([i915#1982] / [i915#262]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl4/igt@perf_pmu@module-unload.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl1/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [SKIP][116] ([fdo#109271]) -> [FAIL][117] ([i915#2842])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [SKIP][118] ([fdo#109271]) -> [INCOMPLETE][119] ([i915#151])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@i915_pm_rpm@system-suspend-modeset.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][120] ([i915#658]) -> [SKIP][121] ([i915#2920]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][122] ([i915#2920]) -> [SKIP][123] ([i915#658]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-iclb4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][124] ([i915#3002]) -> ([FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128]) ([i915#180] / [i915#3002])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-kbl2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-kbl2/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-kbl2/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-kbl2/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][129], [FAIL][130], [FAIL][131]) ([i915#180] / [i915#1814] / [i915#3002]) -> ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([i915#180] / [i915#3002])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl8/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@runner@aborted.html
    - shard-glk:          [FAIL][136] ([i915#3002] / [k.org#202321]) -> ([FAIL][137], [FAIL][138]) ([i915#2722] / [i915#3002] / [k.org#202321])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk9/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk5/igt@runner@aborted.html
    - shard-skl:          ([FAIL][139], [FAIL][140], [FAIL][141]) ([i915#1436] / [i915#2369] / [i915#3002]) -> ([FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1814] / [i915#2029] / [i915#3002])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl10/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl10/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2481]: https://gitlab.freedesktop.org/drm/intel/issues/2481
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2624]: https://gitlab.freedesktop.org/drm/intel/issues/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/index.html

--===============5421672801979401849==
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
<tr><td><b>Series:</b></td><td>drm: Use new DRM printk funcs (like drm_dbg_=
*()) in DP helpers (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87242/">https://patchwork.freedesktop.org/series/87242/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19982/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19982/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10005_full -&gt; Patchwork_19982_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19982_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19982_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19982_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_eio@in-flight-immediate:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl8/igt@gem_eio@in-flight-immediate.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shar=
d-skl7/igt@gem_eio@in-flight-immediate.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19982_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-glk3/igt@drm_import_export@prime.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-gl=
k6/igt@drm_import_export@prime.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2055">i915#2055</a> / [i915#2944])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-glk8/igt@gem_create@create-clear.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-gl=
k9/igt@gem_create@create-clear.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1888">i915#1888</a> / [i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-hostile-preempt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1099">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-glk6/igt@gem_ctx_shared@q-smoketest-all.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/s=
hard-glk1/igt@gem_ctx_shared@q-smoketest-all.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / [i9=
15#95])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb1/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-ic=
lb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2369">i915#2369</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2481">i915#2481</a> / [i915#3070])<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9982/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/s=
hard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl7/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl8=
/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-apl3/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb8/igt@i915_module_load@reload.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-i=
clb6/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-skl7/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-skl7/igt@kms_big_joiner@basic.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-skl2/igt@kms_ccs@pipe-c-crc-primary-bas=
ic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-skl10/igt@kms_chamelium@dp-crc-multiple=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-skl7/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-glk8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ac-hdmi=
-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19982/shard-glk9/igt@kms_flip@2x-flip-vs-blocking-wf-vb=
lank@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19982/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-inter=
ruptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10005/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19982/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_flip@flip-vs-suspend-interr=
uptible@a-dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/180">i915#180</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/=
shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19982/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#212=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10005/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-in=
dfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19982/shard-apl6/igt@kms_frontbuffer_tracking@fbc-=
1p-primscrn-spr-indfb-draw-mmap-wc.html">FAIL</a> ([i915#49])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10005/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-in=
dfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19982/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-=
1p-primscrn-spr-indfb-draw-mmap-wc.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2546">i915#2546</a> / [i915#49])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19982/shard-glk5/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-spr-indfb-draw-mmap-gtt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19982/shard-skl7/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-cur-indfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-snb2/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +201 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb=
-pgflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19982/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-pr=
imscrn-indfb-pgflip-blt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-skl2/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +61 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl4/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/ig=
t@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19982/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375"=
>fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19982/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-apl3/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-skl2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/sh=
ard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-snb2/igt@kms_setmode@basic.html">FAIL</=
a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-skl10/igt@kms_sysfs_edid_timing.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues=
/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspen=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19982/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspe=
nd.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/198">i915#198</a> / [i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-apl6/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +117 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl7/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl=
8/igt@perf@polling-small-buf.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-apl8/igt@sysfs_clients@fair-1.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19982/shard-skl10/igt@sysfs_clients@fair-3.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl4/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
982/shard-skl2/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>)=
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl2/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915=
#2369</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/">i9=
15#2624</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19982/shard-skl7/igt@gem_exec_capture@pi@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19982/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19982/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19982/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">=
PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19982/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS=
</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-glk1/igt@gem_exec_whisper@basic-fds.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118=
</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19982/shard-glk5/igt@gem_exec_whisper@basic-fds.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> (=
[i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19982/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i9=
15#1436</a> / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19982/shard-skl10/igt@gen9_exec_parse@allowed-single.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#25=
74</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19982/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-legacy:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-snb2/igt@kms_atomic@plane-primary-legacy.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109=
271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19982/shard-snb5/igt@kms_atomic@plane-primary-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html">DMESG-WA=
RN</a> ([i915#3219]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19982/shard-iclb5/igt@kms_ccs@pipe-a-random-ccs-data.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.=
html">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19982/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x=
85-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.h=
tml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/118">i915#118</a> / [i915#70] / [i915#95]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk8/igt@kms_cursor_ed=
ge_walk@pipe-a-64x64-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb1/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprim=
ary.html">SKIP</a> ([i915#668]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19982/shard-iclb5/igt@kms_frontbuffer_tracking@psr=
-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982=
/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19982/shard-skl10/igt@kms_plane_alpha_blend@pipe-=
a-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb1/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#11=
1068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19982/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19982/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19982/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspen=
d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl4/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/262">i915#2=
62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19982/shard-skl1/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19982/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl2/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19982/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i91=
5#151</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19982/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">S=
KIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-4.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19982/shard-iclb4/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10005/shard-kbl2/igt@runner@aborted.html">FAIL</a> ([i915#3002]) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/sha=
rd-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19982/shard-kbl2/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/=
shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19982/shard-kbl7/igt@runner@aborted.html">=
FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a> / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10005/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#3=
002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19982/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl6/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19982/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / [i915#3002])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10005/shard-glk9/igt@runner@aborted.html">FAIL</a> ([i915#3002] / [k=
.org#202321]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19982/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-glk5/igt@runner@=
aborted.html">FAIL</a>) ([i915#2722] / [i915#3002] / [k.org#202321])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10005/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10005/shard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a> / [i91=
5#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19982/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19982/shard-skl2/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19982/shard-skl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / [=
i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5421672801979401849==--

--===============1599088569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1599088569==--
