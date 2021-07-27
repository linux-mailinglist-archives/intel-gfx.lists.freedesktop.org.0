Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C18B63D7123
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 10:24:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8716ECA6;
	Tue, 27 Jul 2021 08:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD31C6ECA6;
 Tue, 27 Jul 2021 08:24:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D52A9A008A;
 Tue, 27 Jul 2021 08:24:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 27 Jul 2021 08:24:50 -0000
Message-ID: <162737429086.18665.6051165335046808950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727031703.40395-1-matthew.brost@intel.com>
In-Reply-To: <20210727031703.40395-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSW5j?=
 =?utf-8?q?rease_timeout_in_i915=5Fgem=5Fcontexts_selftests?=
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
Content-Type: multipart/mixed; boundary="===============1972984690=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1972984690==
Content-Type: multipart/alternative;
 boundary="===============6930887657290352071=="

--===============6930887657290352071==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Increase timeout in i915_gem_contexts selftests
URL   : https://patchwork.freedesktop.org/series/93049/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10399_full -> Patchwork_20711_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20711_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - {shard-rkl}:        NOTRUN -> [SKIP][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-rkl-2/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - {shard-rkl}:        NOTRUN -> [DMESG-WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_20711_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#658])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb2/igt@feature_discovery@psr2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb8/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2410])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_persistence@processes:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-snb7/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#307])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1888] / [i915#307])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl9/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][21] ([i915#2658])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl1/igt@gem_softpin@noreloc-s3.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][24] ([i915#3318])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl7/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#579])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][26] ([i915#2782])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          NOTRUN -> [INCOMPLETE][27] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][29] -> [DMESG-WARN][30] ([i915#118] / [i915#95]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-glk6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#110723])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_joiner@basic:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#2705])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb8/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271]) +204 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-snb7/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl8/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-b-ctm-red-to-blue:
    - shard-skl:          [PASS][40] -> [DMESG-WARN][41] ([i915#1982])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl2/igt@kms_color@pipe-b-ctm-red-to-blue.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl10/igt@kms_color@pipe-b-ctm-red-to-blue.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278] / [i915#1149])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][45] ([i915#1319]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][46] ([i915#2105])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278] / [fdo#109279])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109274] / [fdo#109278])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][49] -> [INCOMPLETE][50] ([i915#180] / [i915#1982])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#79])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +52 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +251 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109280]) +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#1188])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([fdo#108145] / [i915#265])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265]) +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#3536])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +6 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#658])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109441])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109441]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][72] ([IGT#2])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl3/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#43])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl10/igt@kms_vblank@pipe-b-accuracy-idle.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl3/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533]) +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2437])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2530])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@perf@short-reads:
    - shard-skl:          NOTRUN -> [FAIL][78] ([i915#51])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl4/igt@perf@short-reads.html

  * igt@prime_nv_api@i915_nv_double_import:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +62 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@prime_nv_api@i915_nv_double_import.html

  * igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109291]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb8/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html

  * igt@sysfs_clients@fair-0:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl7/igt@sysfs_clients@sema-50.html
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#2994])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-tglb1/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl4/igt@sysfs_clients@split-25.html

  * igt@sysfs_timeslice_duration@timeout@bcs0:
    - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#3259])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl10/igt@sysfs_timeslice_duration@timeout@bcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl3/igt@sysfs_timeslice_duration@timeout@bcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][89] ([i915#2842]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][91] ([i915#2842]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [FAIL][93] ([i915#2842]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][95] ([i915#2849]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-independent@vecs0:
    - shard-tglb:         [FAIL][97] ([i915#3795]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-tglb2/igt@gem_exec_schedule@u-independent@vecs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-tglb3/igt@gem_exec_schedule@u-independent@vecs0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [DMESG-WARN][99] ([i915#118] / [i915#95]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-glk9/igt@gem_exec_whisper@basic-fds-forked-all.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-glk8/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][101] ([i915#1436] / [i915#716]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [FAIL][103] ([i915#3444]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][105] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [INCOMPLETE][107] ([i915#146] / [i915#198] / [i915#2910]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][109] ([i915#2122]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:
    - shard-skl:          [DMESG-WARN][111] ([i915#1982]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][115] ([fdo#108145] / [i915#265]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][117] ([fdo#109441]) -> [PASS][118] +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-iclb:         [INCOMPLETE][119] ([fdo#111764] / [i915#1185] / [i915#2828]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][121] ([i915#1542]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl7/igt@perf@polling-parameterized.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl9/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][123] ([i915#1722]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-skl3/igt@perf@polling-small-buf.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl8/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][125] ([i915#1804] / [i915#2684]) -> [WARN][126] ([i915#2684])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][127] ([i915#2920]) -> [SKIP][128] ([i915#658]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][129] ([i915#658]) -> [SKIP][130] ([i915#2920]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl4/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl4/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl4/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][146], [FAIL][147], [FAIL][148]) ([fdo#109271] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#1610] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-apl2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-apl1/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-apl2/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl1/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl2/igt@runne

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/index.html

--===============6930887657290352071==
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
<tr><td><b>Series:</b></td><td>Increase timeout in i915_gem_contexts selfte=
sts</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93049/">https://patchwork.freedesktop.org/series/93049/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20711/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20711/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10399_full -&gt; Patchwork_20711_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20711_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-rkl-2/igt@i915_pm_rpm@dpms-non-lpsp.htm=
l">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continua=
tion-dpms-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20711_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-ic=
lb8/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_207=
11/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-snb7/igt@gem_ctx_persistence@processes.=
html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/sha=
rd-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0711/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
711/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/sh=
ard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/sh=
ard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
711/shard-skl9/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL</a> ([i91=
5#1888] / [i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl1/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-kbl1/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl=
4/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl7/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@i915_pm_rpm@modeset-pc8-resid=
ency-stress.html">SKIP</a> ([i915#579])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-snb7/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl1/igt@i915_suspend@debugfs-reader.ht=
ml">INCOMPLETE</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-glk6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2071=
1/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-90.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb8/igt@kms_big_joiner@basic.html">SK=
IP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-dat=
a-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-snb7/igt@kms_ccs@pipe-d-bad-pixel-forma=
t-y_tiled_ccs.html">SKIP</a> ([fdo#109271]) +204 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl8/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_chamelium@vga-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl2/igt@kms_color@pipe-b-ctm-red-to-blue.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711=
/shard-skl10/igt@kms_color@pipe-b-ctm-red-to-blue.html">DMESG-WARN</a> ([i9=
15#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_color@pipe-d-ctm-blue-to-=
red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl1/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl7/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_cursor_legacy@2x-long-fli=
p-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-=
apl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_flip@2x-modeset-vs-vblank=
-race.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20711/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20711/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271]) +52 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl1/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +251 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109280]) +5 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-sk=
l3/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20711/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_plane_lowres@pipe-b-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl3/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +6 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg=
-area-1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_psr2_su@frontbuffer.html">=
SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html"=
>SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shar=
d-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl3/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-accuracy-idle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl10/igt@kms_vblank@pipe-b-accuracy-idle.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711=
/shard-skl3/igt@kms_vblank@pipe-b-accuracy-idle.html">FAIL</a> ([i915#43])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl1/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb6/igt@nouveau_crc@pipe-b-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-skl4/igt@perf@short-reads.html">FAIL</a=
> ([i915#51])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_import:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@prime_nv_api@i915_nv_double_im=
port.html">SKIP</a> ([fdo#109271]) +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb8/igt@prime_nv_api@i915_nv_import_t=
wice_check_flink_name.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20711/shard-apl7/igt@sysfs_clients@sema-50.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20711/shard-tglb1/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-skl4/igt@sysfs_clients@split-25.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl10/igt@sysfs_timeslice_duration@timeout@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20711/shard-skl3/igt@sysfs_timeslice_duration@timeout@bcs0.html">FAIL</a> =
([i915#3259])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20711/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@=
vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20711/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20711/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20711/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20711/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-independent@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-tglb2/igt@gem_exec_schedule@u-independent@vecs0.html">F=
AIL</a> ([i915#3795]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20711/shard-tglb3/igt@gem_exec_schedule@u-independent@vecs0.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-glk9/igt@gem_exec_whisper@basic-fds-forked-all.html">DM=
ESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20711/shard-glk8/igt@gem_exec_whisper@basic-=
fds-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20711/shard-skl6/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html=
">FAIL</a> ([i915#3444]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20711/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-r=
andom.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#155] / [i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl6/igt@kms_fbcon_fbt@fbc-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPL=
ETE</a> ([i915#146] / [i915#198] / [i915#2910]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl4/igt@kms_flip@flip=
-vs-suspend@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20711/shard-skl2/igt@kms_flip@plain-flip-fb-re=
create-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-seque=
nce.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20711/shard-skl7/igt@kms_pipe_crc_basic@rea=
d-crc-pipe-b-frame-sequence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-apl7/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20711/shard-skl9/igt@kms_plane_alpha_blend=
@pipe-a-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20711/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a=
> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb3/igt@kms_vblank@pipe-b-ts-continuation-suspend.htm=
l">INCOMPLETE</a> ([fdo#111764] / [i915#1185] / [i915#2828]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-iclb6/ig=
t@kms_vblank@pipe-b-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl7/igt@perf@polling-parameterized.html">FAIL</a> ([i9=
15#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20711/shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-skl3/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1=
722]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0711/shard-skl8/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20711/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.=
html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20711/shard-iclb1/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-2.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20711/shard-iclb2/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10399/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10399/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-kbl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0399/shard-kbl7/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180=
] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92]) -&gt; (<a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl4/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20711/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl7/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20711/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kbl3/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20711/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20711/shard-kb=
l4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20711/shard-kbl7/igt@runner@aborted.html">FAIL</a>=
) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i9=
15#3363] / [i915#602])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10399/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10399/shard-apl2/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i=
915#1814] / [i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20711/shard-apl1/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_207=
11/shard-apl2/igt@runne">FAIL</a>, [FAIL][151], [FAIL][152], [FAIL][153]) (=
[i915#1610] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6930887657290352071==--

--===============1972984690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1972984690==--
