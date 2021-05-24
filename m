Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C715D38E014
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 06:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6063A6E098;
	Mon, 24 May 2021 04:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A704B89CF1;
 Mon, 24 May 2021 04:12:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E301A47EB;
 Mon, 24 May 2021 04:12:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Mon, 24 May 2021 04:12:35 -0000
Message-ID: <162182955562.10903.10445159980129541294@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210521195131.27775-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210521195131.27775-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgTW9y?=
 =?utf-8?q?e_DMC_cleanup_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0545007316=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0545007316==
Content-Type: multipart/alternative;
 boundary="===============7396445450990828943=="

--===============7396445450990828943==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More DMC cleanup (rev3)
URL   : https://patchwork.freedesktop.org/series/90379/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10120_full -> Patchwork_20174_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20174_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][1] -> [DMESG-FAIL][2] ([i915#118] / [i915#1888] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk1/igt@gem_create@create-clear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk5/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl4/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +5 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-snb2/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2410])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#3316])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl4/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][11] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][15] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][16] ([i915#2389]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-snb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][17] -> [INCOMPLETE][18] ([i915#2055] / [i915#3468]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-snb:          NOTRUN -> [INCOMPLETE][19] ([i915#3468])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-snb5/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-apl:          NOTRUN -> [INCOMPLETE][20] ([i915#3468])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][21] ([i915#2658])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-snb7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-snb:          NOTRUN -> [FAIL][22] ([i915#3324])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-snb7/igt@gem_userptr_blits@set-cache-level.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][23] ([i915#3296])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@gen9_exec_parse@bb-large.html
    - shard-kbl:          NOTRUN -> [FAIL][24] ([i915#3296])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#1937])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_ccs@pipe-c-bad-pixel-format:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111304])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl3/igt@kms_ccs@pipe-c-bad-pixel-format.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl3/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl7/igt@kms_chamelium@vga-hpd.html
    - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk1/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl7/igt@kms_color@pipe-b-ctm-green-to-red.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl3/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-snb:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +50 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-random:
    - shard-glk:          NOTRUN -> [SKIP][35] ([fdo#109271]) +44 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk6/igt@kms_cursor_crc@pipe-d-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2346])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#79])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [PASS][40] -> [FAIL][41] ([i915#79])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][42] ([i915#180]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#198])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl9/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2122]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2672])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2672])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-snb:          NOTRUN -> [SKIP][49] ([fdo#109271]) +405 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2672])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2672])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][52] ([i915#1188])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-glk:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][56] ([i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-skl:          NOTRUN -> [FAIL][57] ([i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +69 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][64] -> [INCOMPLETE][65] ([i915#155] / [i915#180] / [i915#2828])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2437])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_writeback@writeback-fb-id.html
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2437]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl3/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2437])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk6/igt@kms_writeback@writeback-pixel-formats.html
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2437])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][71] ([i915#1722])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl3/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +181 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2994])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@sysfs_clients@recycle.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#1731])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][77] ([i915#2846]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][79] ([i915#2842]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-glk:          [FAIL][81] ([i915#2842]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-skl:          [INCOMPLETE][83] ([i915#198] / [i915#3468]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl9/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-kbl:          [INCOMPLETE][85] ([i915#3468]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-glk:          [INCOMPLETE][87] ([i915#2055] / [i915#3468]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk9/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][91] ([i915#1436] / [i915#716]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][93] ([i915#72]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - shard-skl:          [DMESG-WARN][95] ([i915#1982]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [FAIL][97] ([i915#79]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][99] ([i915#1188]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [INCOMPLETE][101] ([i915#198]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  
#### Warnings ####

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-skl:          [INCOMPLETE][103] ([i915#198] / [i915#3468]) -> [INCOMPLETE][104] ([i915#198])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-skl:          [INCOMPLETE][105] ([i915#198]) -> [INCOMPLETE][106] ([i915#198] / [i915#3468])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl7/igt@gem_mmap_gtt@fault-concurrent-x.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl3/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [INCOMPLETE][107] ([i915#3462]) -> [DMESG-FAIL][108] ([i915#3462])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb1/igt@i915_selftest@live@execlists.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-tglb5/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [INCOMPLETE][109] ([i915#155]) -> [DMESG-WARN][110] ([i915#180])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl2/igt@i915_suspend@sysfs-reader.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@i915_suspend@sysfs-reader.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#92]) -> ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl3/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl7/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl3/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl3/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl7/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl3/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl4/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([i915#180] / [i915#2722] / [i915#3002] / [i915#3363]) -> ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#2722] / [i915#3002] / [i915#3363])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl6/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl3/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl7/igt@runner@aborted.html
    - shard-glk:          ([FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#2722] / [i915#3002] / [i915#3363] / [k.org#202321]) -> ([FAIL][156], [FAIL][157], [FAIL][158]) ([i915#3002] / [i915#3363] / [k.org#202321])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk4/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk2/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk5/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk5/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk7/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk4/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk2/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([i915#1436] / [i915#2722] / [i915#2966] / [i915#3002]) -> ([FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174]) ([i915#1436] / [i915#2426] / [i915#2722] / [i915#2966] / [i915#3002])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb6/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb2/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb5/igt@runner@aborted.html

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/index.html

--===============7396445450990828943==
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
<tr><td><b>Series:</b></td><td>More DMC cleanup (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90379/">https://patchwork.freedesktop.org/series/90379/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20174/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10120_full -&gt; Patchwork_20174_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20174_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk1/igt@gem_create@create-clear.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-gl=
k5/igt@gem_create@create-clear.html">DMESG-FAIL</a> ([i915#118] / [i915#188=
8] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-skl4/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20174/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WA=
RN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-hostile-preempt.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_201=
74/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/sha=
rd-skl4/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE</a> ([i915#3316])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.=
html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.=
html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/s=
hard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.=
html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-snb7/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0174/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</=
a> ([i915#2055] / [i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-snb5/igt@gem_mmap_gtt@fault-concurrent.=
html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-apl3/igt@gem_mmap_gtt@fault-concurrent-=
x.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-snb7/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-snb7/igt@gem_userptr_blits@set-cache-le=
vel.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-apl3/igt@gen9_exec_parse@bb-large.html">=
FAIL</a> ([i915#3296])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-kbl2/igt@gen9_exec_parse@bb-large.html">=
FAIL</a> ([i915#3296])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-skl3/igt@kms_ccs@pipe-c-bad-pixel-forma=
t.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-skl3/igt@kms_chamelium@dp-frame-dump.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-apl7/igt@kms_chamelium@vga-hpd.html">SKI=
P</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-glk1/igt@kms_chamelium@vga-hpd.html">SKI=
P</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl7/igt@kms_color@pipe-b-ctm-green-to-red.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2017=
4/shard-skl3/igt@kms_color@pipe-b-ctm-green-to-red.html">DMESG-WARN</a> ([i=
915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> ([fdo#109271]) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-glk6/igt@kms_cursor_crc@pipe-d-cursor-6=
4x21-random.html">SKIP</a> ([fdo#109271]) +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20174/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20174/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20174/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FA=
IL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1=
.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/=
shard-skl9/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> ([i915#=
198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20174/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible=
@a-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])<=
/p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271]) +405 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-glk6/igt@kms_flip_scaled_crc@flip-64bpp-=
ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-=
ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">=
FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_pipe_crc_basic@disable-crc-=
after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-skl3/igt@kms_pipe_crc_basic@disable-crc-=
after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-glk1/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-skl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-glk6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-apl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_psr2_su@frontbuffer.html">=
SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_universal_plane@disable-pr=
imary-vs-flip-pipe-d.html">SKIP</a> ([fdo#109271]) +69 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20174/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">IN=
COMPLETE</a> ([i915#155] / [i915#180] / [i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-kbl2/igt@kms_writeback@writeback-fb-id.h=
tml">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-skl3/igt@kms_writeback@writeback-fb-id.h=
tml">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-glk6/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20174/shard-apl3/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-skl3/igt@perf@polling-small-buf.html">F=
AIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-apl3/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109271]) +181 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-apl3/igt@sysfs_clients@pidname.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-kbl2/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
174/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> ([i91=
5#1731])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20174/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20174/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20174/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10120/shard-skl9/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCO=
MPLETE</a> ([i915#198] / [i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20174/shard-skl3/igt@gem_mmap_gtt@cpuset-bas=
ic-small-copy.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10120/shard-kbl2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCO=
MPLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20174/shard-kbl2/igt@gem_mmap_gtt@cpuset-basic-small-copy=
.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk9/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">=
INCOMPLETE</a> ([i915#2055] / [i915#3468]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk1/igt@gem_mmap_gtt@cpuse=
t-basic-small-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html">DMESG-=
WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20174/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20174/shard-skl4/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legac=
y.html">FAIL</a> ([i915#72]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20174/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-v=
s-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-yt=
iled.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl7/igt@kms_draw_crc@draw-met=
hod-xrgb2101010-pwrite-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20174/shard-glk2/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i9=
15#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20174/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">INCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20174/shard-skl4/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-b.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">=
INCOMPLETE</a> ([i915#198] / [i915#3468]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20174/shard-skl2/igt@gem_mmap_gtt@cpuset=
-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl7/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLE=
TE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20174/shard-skl3/igt@gem_mmap_gtt@fault-concurrent-x.html">INC=
OMPLETE</a> ([i915#198] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-tglb1/igt@i915_selftest@live@execlists.html">INCOMPLETE=
</a> ([i915#3462]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20174/shard-tglb5/igt@i915_selftest@live@execlists.html">DMESG-=
FAIL</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl2/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a>=
 ([i915#155]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20174/shard-kbl7/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> =
([i915#180])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10120/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10120/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0120/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1012=
0/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shar=
d-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10120/shard-kbl2/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-k=
bl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html">FAIL</a>) =
([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i91=
5#2722] / [i915#3002] / [i915#3363] / [i915#92]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20174/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl3/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20174/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl4/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20174/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20174/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl7/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20174/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kbl4/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20174/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard-kb=
l1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/shard=
-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20174/shard-kbl1/igt@runner@aborted.html">FAIL<=
/a>) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] /=
 [i915#3002] / [i915#3363] / [i915#602] / [i915#92])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10120/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>) ([i915#180] / [i915#2722] / [i915#3002] / [i915#3363]) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174/sh=
ard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20174/shard-apl1/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20174=
/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20174/shard-apl7/igt@runner@aborted.html"=
>FAIL</a>) ([i915#2722] / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10120/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk5/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10120/shard-glk5/igt@runner@aborted.html">FAIL</a>) ([i915#2722] / [i915#=
3002] / [i915#3363] / [k.org#202321]) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20174/shard-glk7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2017=
4/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20174/shard-glk2/igt@runner@aborted.html=
">FAIL</a>) ([i915#3002] / [i915#3363] / [k.org#202321])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10120/shard-tglb5/igt@runner@aborted.html">FAIL</a>, [FAIL][162], [F=
AIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([i915#1436] / [i915#2722=
] / [i915#2966] / [i915#3002]) -&gt; ([FAIL][167], [FAIL][168], [FAIL][169]=
, [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174]) ([i915#1=
436] / [i915#2426] / [i915#2722] / [i915#2966] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7396445450990828943==--

--===============0545007316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0545007316==--
