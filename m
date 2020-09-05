Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E24825E48E
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Sep 2020 02:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C4A6ECF4;
	Sat,  5 Sep 2020 00:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CADB56ECF5;
 Sat,  5 Sep 2020 00:10:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C196DA9A42;
 Sat,  5 Sep 2020 00:10:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Sat, 05 Sep 2020 00:10:56 -0000
Message-ID: <159926465676.30899.16221486647891100805@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200904113330.19815-1-karthik.b.s@intel.com>
In-Reply-To: <20200904113330.19815-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQXN5?=
 =?utf-8?q?nchronous_flip_implementation_for_i915_=28rev7=29?=
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
Content-Type: multipart/mixed; boundary="===============1628114918=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1628114918==
Content-Type: multipart/alternative;
 boundary="===============5602269798921373205=="

--===============5602269798921373205==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Asynchronous flip implementation for i915 (rev7)
URL   : https://patchwork.freedesktop.org/series/74386/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8965_full -> Patchwork_18443_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18443_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_async_flips@alternate-sync-async-flip} (NEW):
    - shard-iclb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb4/igt@kms_async_flips@alternate-sync-async-flip.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events} (NEW):
    - shard-kbl:          NOTRUN -> [FAIL][2] +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-glk:          NOTRUN -> [FAIL][3] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk6/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * {igt@kms_async_flips@test-time-stamp} (NEW):
    - shard-skl:          NOTRUN -> [FAIL][4] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl5/igt@kms_async_flips@test-time-stamp.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8965_full and Patchwork_18443_full:

### New IGT tests (4) ###

  * igt@kms_async_flips@alternate-sync-async-flip:
    - Statuses : 5 fail(s) 1 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.02] s

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - Statuses : 4 fail(s) 2 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.0] s

  * igt@kms_async_flips@invalid-async-flip:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@kms_async_flips@test-time-stamp:
    - Statuses : 4 fail(s) 2 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.36] s

  

Known issues
------------

  Here are the changes found in Patchwork_18443_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2389])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk7/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk4/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk2/igt@gem_exec_whisper@basic-normal-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk5/igt@gem_exec_whisper@basic-normal-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#1635] / [i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][17] -> [SKIP][18] ([fdo#109271]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#1635] / [i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +48 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl10/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl4/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-dp1:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#2122])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#1188]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#198])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [PASS][39] -> [INCOMPLETE][40] ([CI#80] / [i915#155])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb8/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-b-ts-continuation-idle-hang:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#1635] / [i915#1982])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-idle-hang.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-idle-hang.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][47] -> [FAIL][48] ([i915#1542])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb1/igt@perf@polling-parameterized.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb8/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_caching@writes:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +42 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl3/igt@gem_caching@writes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl2/igt@gem_caching@writes.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [FAIL][51] ([i915#2389]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk4/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-glk:          [FAIL][53] ([i915#2261]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk7/igt@gem_partial_pwrite_pread@reads-uncached.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][55] ([i915#1436] / [i915#716]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-kbl:          [INCOMPLETE][57] ([i915#1373] / [i915#726]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl4/igt@i915_module_load@reload-with-fault-injection.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-iclb:         [FAIL][59] ([i915#1899]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb8/igt@i915_pm_dc@dc5-psr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb1/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][61] ([i915#198] / [i915#2278]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl9/igt@i915_selftest@mock@requests.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl9/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-skl:          [SKIP][63] ([fdo#109271]) -> [PASS][64] +12 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl7/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl1/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-kbl:          [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][67] ([i915#155]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][69] ([i915#2122]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack:
    - shard-iclb:         [DMESG-WARN][73] ([i915#1982]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack:
    - shard-glk:          [FAIL][75] ([i915#49]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [DMESG-WARN][77] ([i915#1982]) -> [PASS][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][81] ([fdo#109642] / [fdo#111068]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@global-sseu-config:
    - shard-iclb:         [SKIP][85] ([i915#405]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb5/igt@perf@global-sseu-config.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb5/igt@perf@global-sseu-config.html
    - shard-apl:          [SKIP][87] ([fdo#109271] / [i915#1635]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl1/igt@perf@global-sseu-config.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl6/igt@perf@global-sseu-config.html
    - shard-tglb:         [SKIP][89] ([i915#405]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-tglb8/igt@perf@global-sseu-config.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-tglb7/igt@perf@global-sseu-config.html
    - shard-glk:          [SKIP][91] ([fdo#109271]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk9/igt@perf@global-sseu-config.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk5/igt@perf@global-sseu-config.html
    - shard-kbl:          [SKIP][93] ([fdo#109271]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl1/igt@perf@global-sseu-config.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@perf@global-sseu-config.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc5-psr:
    - shard-tglb:         [FAIL][95] ([i915#1899]) -> [DMESG-WARN][96] ([i915#2411])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-tglb5/igt@i915_pm_dc@dc5-psr.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-tglb2/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][97] ([i915#1319] / [i915#1635] / [i915#1958]) -> [TIMEOUT][98] ([i915#1319] / [i915#1635])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl4/igt@kms_content_protection@srm.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl2/igt@kms_content_protection@srm.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [INCOMPLETE][99] ([i915#198]) -> [DMESG-WARN][100] ([i915#1982])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [SKIP][101] ([fdo#109271]) -> [FAIL][102] ([i915#1188])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl7/igt@kms_hdr@bpc-switch.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          [DMESG-FAIL][103] ([fdo#108145] / [i915#1982]) -> [FAIL][104] ([fdo#108145] / [i915#265])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][105], [FAIL][106]) ([i915#1436]) -> [FAIL][107] ([i915#2029])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl9/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl3/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1899]: https://gitlab.freedesktop.org/drm/intel/issues/1899
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2261]: https://gitlab.freedesktop.org/drm/intel/issues/2261
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#405]: https://gitlab.freedesktop.org/drm/intel/issues/405
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#726]: https://gitlab.freedesktop.org/drm/intel/issues/726
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * IGT: IGT_5778 -> IGTPW_4951
  * Linux: CI_DRM_8965 -> Patchwork_18443

  CI-20190529: 20190529
  CI_DRM_8965: f4cbf17fababf80c1c67c6f1687fb8bf7e00a263 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4951: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4951/index.html
  IGT_5778: 9a9db93fd2f2f59eb37b79d4b9a623067a945bac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18443: 521ae51c4363f49a4a1a4cc47614f0bd2f8c8ca2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/index.html

--===============5602269798921373205==
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
<tr><td><b>Series:</b></td><td>Asynchronous flip implementation for i915 (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/74386/">https://patchwork.freedesktop.org/series/74386/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8965_full -&gt; Patchwork_18443_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18443_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip} (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb4/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events} (NEW):</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk6/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@test-time-stamp} (NEW):</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl5/igt@kms_async_flips@test-time-stamp.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8965_full and Patchwork_18443_full:</p>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>Statuses : 5 fail(s) 1 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 3.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>Statuses : 4 fail(s) 2 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 3.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>Statuses : 4 fail(s) 2 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.36] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18443_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk7/igt@gem_exec_reloc@basic-many-active@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk4/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk2/igt@gem_exec_whisper@basic-normal-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk5/igt@gem_exec_whisper@basic-normal-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-random:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl10/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl4/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb8/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-idle-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-idle-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb1/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb8/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl3/igt@gem_caching@writes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl2/igt@gem_caching@writes.html">PASS</a> +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk4/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk7/igt@gem_partial_pwrite_pread@reads-uncached.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2261">i915#2261</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk5/igt@gem_partial_pwrite_pread@reads-uncached.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl4/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl4/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/726">i915#726</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb8/igt@i915_pm_dc@dc5-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1899">i915#1899</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb1/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl9/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl9/igt@i915_selftest@mock@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl7/igt@kms_big_fb@linear-32bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl1/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb7/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-iclb5/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/405">i915#405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-iclb5/igt@perf@global-sseu-config.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl1/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl6/igt@perf@global-sseu-config.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-tglb8/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/405">i915#405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-tglb7/igt@perf@global-sseu-config.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-glk9/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-glk5/igt@perf@global-sseu-config.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-kbl1/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-kbl1/igt@perf@global-sseu-config.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-tglb5/igt@i915_pm_dc@dc5-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1899">i915#1899</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-tglb2/igt@i915_pm_dc@dc5-psr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-apl4/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-apl2/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl7/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18443/shard-skl3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5778 -&gt; IGTPW_4951</li>
<li>Linux: CI_DRM_8965 -&gt; Patchwork_18443</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8965: f4cbf17fababf80c1c67c6f1687fb8bf7e00a263 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_4951: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4951/index.html<br />
  IGT_5778: 9a9db93fd2f2f59eb37b79d4b9a623067a945bac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18443: 521ae51c4363f49a4a1a4cc47614f0bd2f8c8ca2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5602269798921373205==--

--===============1628114918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1628114918==--
