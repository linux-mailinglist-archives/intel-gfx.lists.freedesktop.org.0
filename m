Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A6736E3AD
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 05:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277FF6ED0F;
	Thu, 29 Apr 2021 03:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E84D86ED0F;
 Thu, 29 Apr 2021 03:26:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8B5CA7DFC;
 Thu, 29 Apr 2021 03:26:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 29 Apr 2021 03:26:59 -0000
Message-ID: <161966681985.20425.7647443459250947187@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429003410.69754-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20210429003410.69754-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_querying_engine_cycles?=
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
Content-Type: multipart/mixed; boundary="===============1693940700=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1693940700==
Content-Type: multipart/alternative;
 boundary="===============2021202556043412438=="

--===============2021202556043412438==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for querying engine cycles
URL   : https://patchwork.freedesktop.org/series/89615/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10023_full -> Patchwork_20025_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_10023_full and Patchwork_20025_full:

### New IGT tests (2) ###

  * igt@i915_query@cs-cycles:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.13] s

  * igt@i915_query@cs-cycles-invalid:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.04] s

  

Known issues
------------

  Here are the changes found in Patchwork_20025_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb2/igt@gem_create@create-massive.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl2/igt@gem_create@create-massive.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@clone:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb6/igt@gem_ctx_persistence@clone.html

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#3316])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl6/igt@gem_ctx_ringsize@active@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][9] -> [TIMEOUT][10] ([i915#2369] / [i915#3063])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-tglb:         NOTRUN -> [FAIL][13] ([i915#2842]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#118] / [i915#95])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk1/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][16] -> [SKIP][17] ([i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#307])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl6/igt@gem_mmap_gtt@big-copy-xy.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl4/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          NOTRUN -> [DMESG-WARN][21] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#3297]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#3297]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-snb:          NOTRUN -> [FAIL][24] ([i915#3324])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb5/igt@gem_userptr_blits@set-cache-level.html
    - shard-skl:          NOTRUN -> [FAIL][25] ([i915#3324])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@gem_userptr_blits@set-cache-level.html
    - shard-tglb:         NOTRUN -> [FAIL][26] ([i915#3324])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb3/igt@gem_userptr_blits@set-cache-level.html
    - shard-apl:          NOTRUN -> [FAIL][27] ([i915#3324])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl1/igt@gem_userptr_blits@set-cache-level.html
    - shard-iclb:         NOTRUN -> [FAIL][28] ([i915#3324])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@gem_userptr_blits@set-cache-level.html
    - shard-glk:          NOTRUN -> [FAIL][29] ([i915#3324])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk8/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][30] ([i915#3318])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][31] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +257 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109506] / [i915#2411])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109293] / [fdo#109506])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][35] ([i915#1886] / [i915#2291])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#636])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl4/igt@i915_suspend@forcewake.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111614]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb5/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_joiner@basic:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#2705])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl8/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-glk:          NOTRUN -> [SKIP][41] ([fdo#109271]) +39 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk9/igt@kms_ccs@pipe-c-ccs-on-another-bo.html
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl6/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_ccs@pipe-c-random-ccs-data:
    - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271]) +402 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb7/igt@kms_ccs@pipe-c-random-ccs-data.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl2/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb2/igt@kms_chamelium@vga-hpd-without-ddc.html
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb3/igt@kms_chamelium@vga-hpd-without-ddc.html
    - shard-glk:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk9/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][51] ([i915#1319])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl3/igt@kms_content_protection@atomic-dpms.html
    - shard-kbl:          NOTRUN -> [TIMEOUT][52] ([i915#1319])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][53] ([i915#2105])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#54]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3359]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278] / [fdo#109279])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          NOTRUN -> [FAIL][58] ([i915#54])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
    - shard-kbl:          NOTRUN -> [FAIL][59] ([i915#54])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#3319])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109279] / [i915#3359]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109278]) +11 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#72])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl1/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2642])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2672])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +218 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#111825]) +11 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +137 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109280]) +9 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          NOTRUN -> [FAIL][73] ([i915#1188])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109289]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
    - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109289]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb2/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#533]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl8/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][78] -> [DMESG-WARN][79] ([i915#180] / [i915#533])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [PASS][80] -> [SKIP][81] ([fdo#109271]) +18 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl7/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl8/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][82] ([fdo#108145] / [i915#265]) +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][83] ([i915#265])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-apl:          NOTRUN -> [FAIL][84] ([i915#265])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-glk:          NOTRUN -> [FAIL][85] ([i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][86] ([i915#265])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][87] ([fdo#108145] / [i915#265]) +4 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][88] -> [FAIL][89] ([fdo#108145] / [i915#265])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][90] ([fdo#108145] / [i915#265]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
    - shard-glk:          NOTRUN -> [FAIL][91] ([fdo#108145] / [i915#265])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#111615])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#658]) +4 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#2920])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
    - shard-glk:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#658])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk9/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][96] -> [SKIP][97] ([fdo#109642] / [fdo#111068] / [i915#658])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr2_su@page_flip:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#658]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl6/igt@kms_psr2_su@page_flip.html
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#658]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109441]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
    - shard-tglb:         NOTRUN -> [FAIL][101] ([i915#132]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][102] -> [SKIP][103] ([fdo#109441]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-skl:          NOTRUN -> [FAIL][104] ([i915#43])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl2/igt@kms_vblank@pipe-a-accuracy-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#2437])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2437])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2437])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling:
    - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#1542]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl4/igt@perf@polling.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl7/igt@perf@polling.html

  * igt@prime_nv_api@i915_nv_double_export:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109291]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb4/igt@prime_nv_api@i915_nv_double_export.html

  * igt@prime_nv_api@nv_self_import:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109291]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb7/igt@prime_nv_api@nv_self_import.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#2994]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl8/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-1:
    - shard-glk:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#2994])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk6/igt@sysfs_clients@fair-1.html
    - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#2994])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb8/igt@sysfs_clients@fair-1.html
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#2994])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb7/igt@sysfs_clients@fair-1.html
    - shard-kbl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#2994]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl7/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2994]) +3 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl2/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_create@create-clear:
    - shard-iclb:         [FAIL][118] ([i915#3160]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-iclb1/igt@gem_create@create-clear.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@gem_create@create-clear.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][120] ([i915#2842]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          [FAIL][122] ([i915#2842]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk4/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk7/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-kbl:          [FAIL][124] ([i915#2842]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-kbl2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-glk:          [FAIL][126] ([i915#307]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-apl:          [SKIP][128] ([fdo#109271]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-apl7/igt@i915_pm_dc@dc9-dpms.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl3/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][130] ([i915#2521]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-tglb:         [FAIL][132] -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-tglb6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][134] ([i915#54]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
    - shard-kbl:          [FAIL][136] ([i915#54]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
    - shard-glk:          [FAIL][138] ([i915#54]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk6/igt@kms_cursor_crc@pipe-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/index.html

--===============2021202556043412438==
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
<tr><td><b>Series:</b></td><td>Add support for querying engine cycles</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89615/">https://patchwork.freedesktop.org/series/89615/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10023_full -&gt; Patchwork_20025_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10023_full and Patchwork_20025_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@i915_query@cs-cycles:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@i915_query@cs-cycles-invalid:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20025_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb2/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl2/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb6/igt@gem_ctx_persistence@clone.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl6/igt@gem_ctx_ringsize@active@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE</a> ([i915#3316])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk1/igt@gem_exec_whisper@basic-fds-priority-all.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl6/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl4/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl6/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb6/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb5/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb3/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl1/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk8/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109271]) +257 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109506] / [i915#2411])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109293] / [fdo#109506])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl4/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl8/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb5/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> ([fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl8/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk9/igt@kms_ccs@pipe-c-ccs-on-another-bo.html">SKIP</a> ([fdo#109271]) +39 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl6/igt@kms_ccs@pipe-c-ccs-on-another-bo.html">SKIP</a> ([fdo#109271] / [fdo#111304]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb7/igt@kms_ccs@pipe-c-random-ccs-data.html">SKIP</a> ([fdo#109271]) +402 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl2/igt@kms_chamelium@hdmi-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb2/igt@kms_chamelium@vga-hpd-without-ddc.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb3/igt@kms_chamelium@vga-hpd-without-ddc.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk9/igt@kms_chamelium@vga-hpd-without-ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl10/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl3/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl6/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl2/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">FAIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">FAIL</a> ([i915#54])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">FAIL</a> ([i915#54])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-32x32-rapid-movement.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html">SKIP</a> ([fdo#109278]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">FAIL</a> ([i915#72])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl1/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +218 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#111825]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +137 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb2/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl8/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">DMESG-WARN</a> ([i915#180] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl7/igt@kms_plane@plane-position-covered-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl8/igt@kms_plane@plane-position-covered-pipe-b-planes.html">SKIP</a> ([fdo#109271]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb6/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([i915#2920])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk9/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl6/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb3/igt@kms_psr@psr2_primary_mmap_cpu.html">FAIL</a> ([i915#132]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-accuracy-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl2/igt@kms_vblank@pipe-a-accuracy-idle.html">FAIL</a> ([i915#43])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl7/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl6/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl4/igt@perf@polling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl7/igt@perf@polling.html">FAIL</a> ([i915#1542]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_export:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb4/igt@prime_nv_api@i915_nv_double_export.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_self_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb7/igt@prime_nv_api@nv_self_import.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl8/igt@sysfs_clients@busy.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk6/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb8/igt@sysfs_clients@fair-1.html">SKIP</a> ([i915#2994])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb7/igt@sysfs_clients@fair-1.html">SKIP</a> ([i915#2994])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl7/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl2/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-iclb1/igt@gem_create@create-clear.html">FAIL</a> ([i915#3160]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-iclb1/igt@gem_create@create-clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk4/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk7/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-kbl2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-apl7/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-apl3/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-tglb6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-tglb1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/shard-glk6/igt@kms_cursor_crc@pipe-">FAIL</a> ([i915#54]) -&gt; [PASS][139]</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2021202556043412438==--

--===============1693940700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1693940700==--
