Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DAF1EFE9F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 19:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 601C86E505;
	Fri,  5 Jun 2020 17:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C5D36E505;
 Fri,  5 Jun 2020 17:15:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CB77A47E0;
 Fri,  5 Jun 2020 17:15:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kees Cook" <keescook@chromium.org>
Date: Fri, 05 Jun 2020 17:15:12 -0000
Message-ID: <159137731214.18508.5808059313404731727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <202006050718.9D4FCFC2E@keescook>
In-Reply-To: <202006050718.9D4FCFC2E@keescook>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_comments_mentioning_typo_in_IS=5FENABLED=28=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Fix comments mentioning typo in IS_ENABLED()
URL   : https://patchwork.freedesktop.org/series/78044/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8590_full -> Patchwork_17888_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8590_full and Patchwork_17888_full:

### New IGT tests (14) ###

  * igt@gem_exec_balancer@bonded-cork:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.11] s

  * igt@gem_exec_balancer@bonded-imm:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 9.77] s

  * igt@gem_exec_balancer@busy:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 5.08] s

  * igt@gem_exec_balancer@full:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.29] s

  * igt@gem_exec_balancer@full-late:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.39] s

  * igt@gem_exec_balancer@full-late-pulse:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.48] s

  * igt@gem_exec_balancer@full-pulse:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.54] s

  * igt@gem_exec_balancer@indices:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.19] s

  * igt@gem_exec_balancer@individual:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_balancer@invalid-balancer:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.07] s

  * igt@gem_exec_balancer@invalid-bonds:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@gem_exec_balancer@nop:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 45.82] s

  * igt@gem_exec_balancer@semaphore:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 9.92] s

  * igt@gem_exec_balancer@smoke:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 23.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_17888_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_tiled_pread_basic:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl3/igt@gem_tiled_pread_basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-apl6/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          [PASS][11] -> [INCOMPLETE][12] ([i915#58] / [k.org#198133])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk8/igt@i915_suspend@forcewake.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-glk2/igt@i915_suspend@forcewake.html
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#636] / [i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl1/igt@i915_suspend@forcewake.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-skl7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-skl2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-apl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk4/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-glk6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][21] -> [DMESG-FAIL][22] ([i915#54] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][23] -> [FAIL][24] ([i915#57])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#93] / [i915#95]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#62] / [i915#92]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-d:
    - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-tglb1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-d.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-tglb8/igt@kms_universal_plane@universal-plane-gen9-features-pipe-d.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl1/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][41] ([i915#1930]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk7/igt@gem_exec_whisper@basic-normal-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-glk2/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][45] ([i915#1436] / [i915#716]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][47] ([i915#155]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@i915_suspend@debugfs-reader.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][49] ([i915#93] / [i915#95]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl2/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][51] ([i915#54]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-skl:          [DMESG-WARN][53] ([i915#128]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl10/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-skl5/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * {igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [FAIL][57] ([i915#49]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * {igt@kms_getfb@getfb2-handle-protection}:
    - shard-apl:          [DMESG-WARN][59] ([i915#95]) -> [PASS][60] +22 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl6/igt@kms_getfb@getfb2-handle-protection.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-apl8/igt@kms_getfb@getfb2-handle-protection.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][63] ([fdo#109642] / [fdo#111068]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl6/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl1/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][67] ([i915#1542]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-hsw6/igt@perf@polling-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-hsw2/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rpm@reg-read-ioctl:
    - shard-kbl:          [DMESG-WARN][69] ([i915#93] / [i915#95]) -> [DMESG-WARN][70] ([i915#62] / [i915#92])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@i915_pm_rpm@reg-read-ioctl.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl2/igt@i915_pm_rpm@reg-read-ioctl.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][71] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][72] ([i915#1319])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl6/igt@kms_content_protection@atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][73] ([i915#1319]) -> [TIMEOUT][74] ([i915#1319] / [i915#1958])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [DMESG-FAIL][75] ([fdo#110321]) -> [TIMEOUT][76] ([i915#1319] / [i915#1958])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl3/igt@kms_content_protection@legacy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [DMESG-FAIL][77] ([fdo#110321] / [i915#95]) -> [TIMEOUT][78] ([i915#1319] / [i915#1635]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@kms_content_protection@lic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [DMESG-FAIL][79] ([fdo#110321] / [i915#95]) -> [TIMEOUT][80] ([i915#1319])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@kms_content_protection@srm.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][81] ([i915#180] / [i915#95]) -> [DMESG-WARN][82] ([i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8590 -> Patchwork_17888

  CI-20190529: 20190529
  CI_DRM_8590: 91c6f0274b54c89679cd23f6fc65e9fe5922971f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17888: f6f5eb4457be93abbc43374cbb6e2c6cca6f2035 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17888/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
