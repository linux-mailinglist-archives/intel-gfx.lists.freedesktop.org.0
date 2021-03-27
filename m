Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3658234B40A
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Mar 2021 04:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A32EA6E07F;
	Sat, 27 Mar 2021 03:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDD7A6E077;
 Sat, 27 Mar 2021 03:29:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDF5DA882E;
 Sat, 27 Mar 2021 03:29:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 27 Mar 2021 03:29:47 -0000
Message-ID: <161681578774.11341.1914225093810184035@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210327005945.4929-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210327005945.4929-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_zero_out_the_Y_plane=27s_watermarks?=
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
Content-Type: multipart/mixed; boundary="===============1518095326=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1518095326==
Content-Type: multipart/alternative;
 boundary="===============3278786113806008503=="

--===============3278786113806008503==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Don't zero out the Y plane's watermarks
URL   : https://patchwork.freedesktop.org/series/88510/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9909_full -> Patchwork_19872_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19872_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19872_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19872_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl8/igt@gem_ctx_ringsize@active@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-apl:          NOTRUN -> [TIMEOUT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl6/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl8/igt@gem_userptr_blits@vma-merge.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-apl:          [FAIL][5] ([i915#2389]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl8/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl2/igt@gem_exec_reloc@basic-many-active@vecs0.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-rshift-uvec4-ivec4 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][7] +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-rshift-uvec4-ivec4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9909_full and Patchwork_19872_full:

### New Piglit tests (8) ###

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-matrixcompmult-mat3x4-mat3x4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-min-float-float:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uvec2-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-rshift-uvec4-ivec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-neg-int-ivec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-uvec2-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-mult-mat3x4-float:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-selection-bool-mat2-mat2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19872_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][8] ([i915#3002])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1099]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-snb7/igt@gem_ctx_persistence@engines-queued.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2410])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [PASS][12] -> [TIMEOUT][13] ([i915#2369] / [i915#2771] / [i915#3063])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl4/igt@gem_eio@unwedge-stress.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl10/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271]) +72 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#307])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl10/igt@gem_mmap_gtt@big-copy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl3/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][23] ([i915#2658])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl8/igt@gem_pread@exhaustion.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl3/igt@gem_softpin@noreloc-s3.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-kbl4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][26] ([i915#3002])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl7/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1436])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][29] ([i915#3296])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl2/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_rpm@gem-execbuf:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#2411])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb7/igt@i915_pm_rpm@gem-execbuf.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-tglb6/igt@i915_pm_rpm@gem-execbuf.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#110725] / [fdo#111614])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110723])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#2705])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl8/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-random-ccs-data:
    - shard-iclb:         [PASS][37] -> [DMESG-WARN][38] ([i915#3219])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb7/igt@kms_ccs@pipe-a-random-ccs-data.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html

  * igt@kms_ccs@pipe-b-bad-aux-stride:
    - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271]) +194 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-snb7/igt@kms_ccs@pipe-b-bad-aux-stride.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111304])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl7/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#1149])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb7/igt@kms_color@pipe-a-gamma.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-tglb3/igt@kms_color@pipe-a-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +24 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl8/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][47] ([i915#1319]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-random:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x256-random.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274] / [fdo#109278])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][50] ([i915#2346])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#52] / [i915#54]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#52] / [i915#54])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#79])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#2122])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2672])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2642])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2642])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][63] ([i915#1188])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([fdo#108145] / [i915#265])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][69] ([i915#265]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-glk:          [PASS][70] -> [DMESG-WARN][71] ([i915#118] / [i915#95])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk9/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-glk1/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +5 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109441])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_psr@sprite_mmap_gtt:
    - shard-iclb:         [PASS][76] -> [SKIP][77] ([i915#668]) +4 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb7/igt@kms_psr@sprite_mmap_gtt.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb1/igt@kms_psr@sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +232 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl7/igt@kms_writeback@writeback-check-output.html
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2437])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#2530])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][82] ([i915#2846]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-kbl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][84] ([i915#2842]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-glk:          [FAIL][86] ([i915#2842]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-glk9/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [DMESG-WARN][88] ([i915#118] / [i915#95]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk4/igt@gem_exec_whisper@basic-fds-priority.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-glk9/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-glk:          [FAIL][90] ([i915#307]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-skl:          [INCOMPLETE][92] ([i915#151]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl3/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl7/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][94] ([i915#2521]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][96] ([i915#1982]) -> [PASS][97] +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][98] ([i915#180]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [FAIL][100] ([i915#2122]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl3/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][102] ([fdo#108145] / [i915#265]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - shard-iclb:         [INCOMPLETE][104] -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb7/igt@kms_plane_cursor@pipe-c-primary-size-64.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-64.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][108] ([i915#2842]) -> [SKIP][109] ([fdo#109271])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][110] ([i915#2681] / [i915#2684]) -> [WARN][111] ([i915#2684])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][112] ([fdo#109349]) -> [DMESG-WARN][113] ([i915#1226])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][114] ([i915#658]) -> [SKIP][115] ([i915#2920]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][116] ([i915#2920]) -> [SKIP][117] ([i915#658]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][118], [FAIL][119]) ([i915#3002]) -> ([FAIL][120], [FAIL][121], [FAIL][122]) ([i915#180] / [i915#2505] / [i915#3002])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl2/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl2/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-kbl4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-kbl2/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][123], [FAIL][124], [FAIL][125]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002]) -> ([FAIL][126], [FAIL][127]) ([i915#180] / [i915#3002])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-apl8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2263] / [i915#3002]) -> ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#1436] / [i915#2029] / [i915#3002])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl2/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl6/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl9/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl3/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl8/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl2/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl2/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/inte

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/index.html

--===============3278786113806008503==
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
<tr><td><b>Series:</b></td><td>drm/i915: Don&#39;t zero out the Y plane&#39=
;s watermarks</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/88510/">https://patchwork.freedesktop.org/series/88510/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19872/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19872/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9909_full -&gt; Patchwork_19872_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19872_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19872_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19872_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl8/igt@gem_ctx_ringsize@active@bcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shar=
d-skl4/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl6/igt@gem_eio@in-flight-contexts-10m=
s.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl8/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_reloc@basic-many-active@vecs0:<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-apl8/igt@gem_exec_reloc@basic-many-active@vecs0.html">FA=
IL</a> ([i915#2389]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19872/shard-apl2/igt@gem_exec_reloc@basic-many-active@vecs0.h=
tml">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign=
-rshift-uvec4-ivec4 (NEW):<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/pig-icl-1065g7/spec@arb_tessellation_shader@e=
xecution@built-in-functions@tcs-op-assign-rshift-uvec4-ivec4.html">INCOMPLE=
TE</a> +7 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9909_full and Patchwork_19=
872_full:</p>
<h3>New Piglit tests (8)</h3>
<ul>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-matrixcomp=
mult-mat3x4-mat3x4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-min-float-=
float:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-=
lshift-uvec2-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-=
rshift-uvec4-ivec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-=
neg-int-ivec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-=
uvec2-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-mult-ma=
t3x4-float:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-selecti=
on-bool-mat2-mat2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19872_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-skl4/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-snb7/igt@gem_ctx_persistence@engines-qu=
eued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1987=
2/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2=
410])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl4/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl1=
0/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2771] /=
 [i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-skl4/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +72 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/sha=
rd-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/sha=
rd-glk9/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/sh=
ard-tglb6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl10/igt@gem_mmap_gtt@big-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl3=
/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl8/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-kbl3/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-kbl4=
/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl7/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl8/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard=
-skl8/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436])</l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl2/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-tglb7/igt@i915_pm_rpm@gem-execbuf.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-tg=
lb6/igt@i915_pm_rpm@gem-execbuf.html">INCOMPLETE</a> ([i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-apl1/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-a=
pl8/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_big_fb@linear-8bpp-rotate=
-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl8/igt@kms_big_joiner@invalid-modeset=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-iclb7/igt@kms_ccs@pipe-a-random-ccs-data.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/s=
hard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html">DMESG-WARN</a> ([i915#3=
219])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-snb7/igt@kms_ccs@pipe-b-bad-aux-stride.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +194 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_ccs@pipe-c-crc-primary-bas=
ic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-skl7/igt@kms_chamelium@dp-audio-edid.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_chamelium@hdmi-hpd-for-ea=
ch-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-gamma:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-tglb7/igt@kms_color@pipe-a-gamma.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-tgl=
b3/igt@kms_color@pipe-a-gamma.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl8/igt@kms_color_chamelium@pipe-c-ctm=
-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl7/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte">i915#13=
19</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-=
256x256-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19872/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html">F=
AIL</a> ([i915#52] / [i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-u=
ntiled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19872/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mm=
ap-cpu-untiled.html">FAIL</a> ([i915#52] / [i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19872/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FAI=
L</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19872/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> =
([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19872/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">=
i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl6/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19872/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-glk9/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19872/shard-glk1/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915=
#118</a> / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-skl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/sha=
rd-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-iclb7/igt@kms_psr@sprite_mmap_gtt.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-ic=
lb1/igt@kms_psr@sprite_mmap_gtt.html">SKIP</a> ([i915#668]) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-apl7/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +232 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19872/shard-apl7/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#2437]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19872/shard-skl4/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19872/shard-iclb3/igt@nouveau_crc@pipe-a-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i=
915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19872/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19872/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19872/shard-glk9/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-glk4/igt@gem_exec_whisper@basic-fds-priority.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19872/shard-glk9/igt@gem_exec_whisper@basic-fds-priority=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> =
([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19872/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl3/igt@i915_pm_rpm@modeset-lpsp-stress.html">INCOMPLET=
E</a> ([i915#151]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19872/shard-skl7/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19872/shard-skl4/igt@kms_async_flips@alternate-sync-async-=
flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> (=
[i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19872/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN=
</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19872/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</=
a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL=
</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19872/shard-skl3/igt@kms_flip@plain-flip-ts-check@a-edp1.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19872/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-=
coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-64:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-iclb7/igt@kms_plane_cursor@pipe-c-primary-size-64.html">=
INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19872/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-64.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9872/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19872/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#2681] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19872/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence=
.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#109=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19872/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#12=
26</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKI=
P</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19872/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html=
">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19872/shard-iclb4/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>) ([i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19872/shard-kbl4/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/sha=
rd-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19872/shard-kbl6/igt@runner@aborted.html">FAI=
L</a>) ([i915#180] / [i915#2505] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9909/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#180] /=
 [i915#1814] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19872/shard-apl7/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-ap=
l8/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9909/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9909/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
09/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl3/igt@runner@aborted.html">F=
AIL</a>) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2263] / [i915#300=
2]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
872/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl8/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19872/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl7/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19872/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19872/shard-skl4/igt@runner@abor=
ted.html">FAIL</a>) ([i915#1436] / [i915#2029] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============3278786113806008503==--

--===============1518095326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1518095326==--
