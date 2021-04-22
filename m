Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC09D368822
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 22:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20806E096;
	Thu, 22 Apr 2021 20:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAD966E096;
 Thu, 22 Apr 2021 20:40:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C14EAA363D;
 Thu, 22 Apr 2021 20:40:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Date: Thu, 22 Apr 2021 20:40:15 -0000
Message-ID: <161912401576.10415.3509937246687271086@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210422160544.2427123-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210422160544.2427123-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Disable_PSR2_if_TGL_Display_stepping_is_B1_fro?=
 =?utf-8?q?m_A0_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1798517289=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1798517289==
Content-Type: multipart/alternative;
 boundary="===============5595193095690687037=="

--===============5595193095690687037==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Disable PSR2 if TGL Display stepping is B1 from A0 (rev2)
URL   : https://patchwork.freedesktop.org/series/89348/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9998_full -> Patchwork_19974_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19974_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19974_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19974_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb3/igt@kms_plane_cursor@pipe-a-viewport-size-64.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb1/igt@kms_plane_cursor@pipe-a-viewport-size-64.html

  
Known issues
------------

  Here are the changes found in Patchwork_19974_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][3] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2410])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-snb6/igt@gem_ctx_persistence@process.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-glk7/igt@gem_exec_create@forked.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-glk1/igt@gem_exec_create@forked.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][13] -> [SKIP][14] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][15] ([i915#2389]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl8/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#307])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl9/igt@gem_mmap_gtt@big-copy-odd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl10/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#307]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-glk8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-glk7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#644])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][22] ([i915#2658])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl8/igt@gem_pread@exhaustion.html
    - shard-skl:          NOTRUN -> [WARN][23] ([i915#2658])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl4/igt@gem_pread@exhaustion.html

  * igt@gem_spin_batch@user-each:
    - shard-apl:          [PASS][24] -> [FAIL][25] ([i915#2898])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl8/igt@gem_spin_batch@user-each.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl2/igt@gem_spin_batch@user-each.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][26] ([i915#3002])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl1/igt@gem_userptr_blits@input-checking.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][27] ([i915#3002])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#1436] / [i915#716])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][30] ([i915#3296])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl8/igt@gen9_exec_parse@bb-large.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#658]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][34] ([i915#2782])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_joiner@basic:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#2705])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl2/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111304])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl7/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl4/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +49 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#72])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2346])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +87 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl4/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#79])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2642])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271]) +298 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#49])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2839])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb8/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][62] ([i915#265]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][63] ([i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [PASS][67] -> [SKIP][68] ([i915#1911]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb3/igt@kms_psr2_su@frontbuffer.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109441]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         [PASS][71] -> [FAIL][72] ([i915#132]) +19 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb5/igt@kms_psr@psr2_cursor_plane_onoff.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb7/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +207 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl6/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2437])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl8/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][75] -> [FAIL][76] ([i915#1542])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb2/igt@perf@polling-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb3/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2994]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl6/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@recycle-many:
    - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#1731]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl8/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          [INCOMPLETE][81] ([i915#3316]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl1/igt@gem_ctx_ringsize@active@bcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl8/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][83] ([i915#2369] / [i915#3063]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb3/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [TIMEOUT][85] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-iclb5/igt@gem_eio@unwedge-stress.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-iclb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][87] ([i915#2846]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][89] ([i915#2842]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [FAIL][91] ([i915#2842]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][93] ([i915#2842]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][95] ([i915#2428]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][97] ([i915#454]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl2/igt@i915_pm_dc@dc6-psr.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +4 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][101] ([i915#2122]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][105] ([fdo#108145] / [i915#265]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][107] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][111] ([i915#1542]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-glk8/igt@perf@polling-parameterized.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-glk4/igt@perf@polling-parameterized.html
    - shard-skl:          [FAIL][113] ([i915#1542]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl9/igt@perf@polling-parameterized.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl1/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][115] ([i915#1722]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl4/igt@perf@polling-small-buf.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl9/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-tglb:         [FAIL][117] ([i915#1567]) -> [SKIP][118] ([i915#1904])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-tglb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tglb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
    - shard-iclb:         [SKIP][119] ([i915#658]) -> [SKIP][120] ([i915#588])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-iclb:         [SKIP][121] ([i915#658]) -> [SKIP][122] ([i915#2920])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][123] ([i915#2920]) -> [SKIP][124] ([i915#658]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002]) -> ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl6/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl3/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl3/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl4/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([fdo#109271] / [i915#1610] / [i915#180] / [i915#1814] / [i915#3002]) -> ([FAIL][143], [FAIL][144], [FAIL][145]) ([i915#180] / [i915#3002])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl8/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl3/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-apl2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1814] / [i915#2029] / [i915#3002]) -> ([FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#3002])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl2/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl7/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl7/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl2/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl2/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl1/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1567]: https://gitlab.freedesktop.org/drm/intel/issues/1567
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/int

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/index.html

--===============5595193095690687037==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Disable PSR2 if TGL Displa=
y stepping is B1 from A0 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/89348/">https://patchwork.freedesktop.org/series/89348/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19974/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19974/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9998_full -&gt; Patchwork_19974_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19974_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19974_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19974_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_plane_cursor@pipe-a-viewport-size-64:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-tglb3/igt@kms_plane_cursor@pipe-a-viewport-size-64.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19974/shard-tglb1/igt@kms_plane_cursor@pipe-a-viewport-size-64.html">FAI=
L</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19974_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-kbl7/igt@gem_ctx_isolation@preservation=
-s3@vcs0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1997=
4/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2=
410])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-snb6/igt@gem_ctx_persistence@process.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-glk7/igt@gem_exec_create@forked.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-glk1=
/igt@gem_exec_create@forked.html">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/118">i915#118</a> / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
974/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i9=
15#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/sha=
rd-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/sha=
rd-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl8/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl9/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-s=
kl10/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-glk8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/s=
hard-glk7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#307]) +=
2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1997=
4/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#6=
44])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19974/shard-apl8/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19974/shard-skl4/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@user-each:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-apl8/igt@gem_spin_batch@user-each.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-ap=
l2/igt@gem_spin_batch@user-each.html">FAIL</a> ([i915#2898])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19974/shard-apl1/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19974/shard-kbl6/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/sh=
ard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / [=
i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl8/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl7/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19974/shard-skl4/igt@i915_module_load@reload-with-fault-injection.htm=
l">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-skl7/igt@i915_pm_dc@dc3co-vpb-simulatio=
n.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-snb5/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl2/igt@kms_big_joiner@basic.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-skl7/igt@kms_ccs@pipe-c-ccs-on-another-=
bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl2/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-skl4/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@kms_color_chamelium@pipe-a-deg=
amma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
974/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-5=
12x512-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19974/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atom=
ic.html">FAIL</a> ([i915#72])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cursor-varyi=
ng-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19974/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cur=
sor-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-skl4/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19974/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/sh=
ard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +298 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-in=
dfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19974/shard-skl10/igt@kms_frontbuffer_tracking@psr=
-1p-primscrn-spr-indfb-draw-mmap-wc.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-skl7/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-tglb8/igt@kms_plane@pixel-format-pipe-a-planes-source-cl=
amping.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19974/shard-tglb5/igt@kms_plane@pixel-format-pipe-a-planes-s=
ource-clamping.html">FAIL</a> ([i915#2839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl8/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-tglb3/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-tg=
lb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([i915#1911]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/s=
hard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-tglb5/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/=
shard-tglb7/igt@kms_psr@psr2_cursor_plane_onoff.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/132">i915#132</a>) +19 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl6/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +207 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl8/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-tglb2/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/shard=
-tglb3/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-apl6/igt@sysfs_clients@fair-7.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19974/shard-kbl6/igt@sysfs_clients@recycle-many.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_199=
74/shard-skl8/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>) =
+1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl1/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE</=
a> ([i915#3316]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19974/shard-skl8/igt@gem_ctx_ringsize@active@bcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9998/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915=
#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19974/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a><=
/p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9998/shard-iclb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915=
#2369] / [i915#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19974/shard-iclb2/igt@gem_eio@unwedge-stress.h=
tml">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i=
915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19974/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19974/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19974/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19974/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19974/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/s=
hard-skl2/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19974/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible=
@a-dp1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19974/shard-skl1/igt@kms_flip@plain-flip-fb-rec=
reate-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19974/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe=
-c.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19974/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-=
coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-iclb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> =
/ <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19974/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9974/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9998/shard-glk8/igt@perf@polling-parameterized.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/s=
hard-glk4/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9998/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/s=
hard-skl1/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl4/igt@perf@polling-small-buf.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/sha=
rd-skl9/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9998/shard-tglb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1567">i915#1567=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9974/shard-tglb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#=
1904])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9998/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> =
([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19974/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> =
([i915#588])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKI=
P</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19974/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html=
">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19974/shard-iclb5/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9998/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
98/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-kbl6/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i=
915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int">i915#1814<=
/a> / [i915#2505] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19974/shard-kbl7/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/sha=
rd-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19974/shard-kbl7/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/=
shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl3/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_199=
74/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19974/shard-kbl4/igt@runner@aborted.htm=
l">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/14=
36">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int">=
i915#1814</a> / [i915#2505] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9998/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-apl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
98/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/int">i915#1814</a> / [i915#3002]) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/sh=
ard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19974/shard-apl1/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974=
/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/180">i915#180</a> / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9998/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9998/shard-skl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9998/shard-skl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/int">i915#1814</a> / [i915#2029] / [i915#3002]) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19974/s=
hard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19974/shard-skl2/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1997=
4/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19974/shard-skl1/igt@runner@aborted.html=
">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/143=
6">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int">i915#=
1814</a> / [i915#2029] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5595193095690687037==--

--===============1798517289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1798517289==--
