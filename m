Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3349731C305
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Feb 2021 21:32:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A72DC89C29;
	Mon, 15 Feb 2021 20:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5548B89C25;
 Mon, 15 Feb 2021 20:32:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D54DA882E;
 Mon, 15 Feb 2021 20:32:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Date: Mon, 15 Feb 2021 20:32:05 -0000
Message-ID: <161342112528.26466.3913536783491909265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <YCqaI95UW9L7Mg/L@mwanda>
In-Reply-To: <YCqaI95UW9L7Mg/L@mwanda>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest=3A_Fix_an_error_code_in_mock=5Fcontext=5Fbarrier?=
 =?utf-8?b?KCk=?=
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
Content-Type: multipart/mixed; boundary="===============1238866424=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1238866424==
Content-Type: multipart/alternative;
 boundary="===============4550136101777504807=="

--===============4550136101777504807==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftest: Fix an error code in mock_context_barrier()
URL   : https://patchwork.freedesktop.org/series/87103/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9777_full -> Patchwork_19682_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19682_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][2] ([i915#2842])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2842]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_params@secure-non-master:
    - shard-iclb:         NOTRUN -> [SKIP][10] ([fdo#112283])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][11] ([i915#2389]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl1/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2389])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          NOTRUN -> [TIMEOUT][13] ([i915#1729])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl1/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][15] ([i915#2658])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][16] ([i915#3002])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@process-exit-mmap@gtt:
    - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#1699]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@gem_userptr_blits@process-exit-mmap@gtt.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#112306])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][19] ([i915#1886] / [i915#2291])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl1/igt@i915_selftest@live@gt_pm.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#2574])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb2/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110723])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl8/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl2/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109284] / [fdo#111827])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl2/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-snb:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-snb6/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][30] ([i915#1319])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl2/igt@kms_content_protection@atomic.html
    - shard-apl:          NOTRUN -> [TIMEOUT][31] ([i915#1319])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109300] / [fdo#111066])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][33] ([i915#2105])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#54]) +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-skl:          NOTRUN -> [FAIL][36] ([i915#54])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278] / [fdo#109279])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +171 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          NOTRUN -> [FAIL][40] ([i915#2346])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109274]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#79])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2122]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:
    - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#2122])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk9/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2642])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-skl:          NOTRUN -> [FAIL][49] ([i915#2628])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-kbl:          NOTRUN -> [FAIL][50] ([i915#2641])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2672])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +50 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271]) +278 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-snb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109280])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][55] ([i915#180])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265]) +4 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109278]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#658])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][68] -> [SKIP][69] ([fdo#109441])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][70] -> [INCOMPLETE][71] ([i915#198] / [i915#2405])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2437]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +164 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][74] -> [FAIL][75] ([i915#1542])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk8/igt@perf@polling-parameterized.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk1/igt@perf@polling-parameterized.html
    - shard-tglb:         [PASS][76] -> [FAIL][77] ([i915#1542])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb3/igt@perf@polling-parameterized.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb2/igt@perf@polling-parameterized.html
    - shard-apl:          [PASS][78] -> [FAIL][79] ([i915#1542])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-apl2/igt@perf@polling-parameterized.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl7/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109291])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html

  * igt@prime_vgem@sync@bcs0:
    - shard-tglb:         [PASS][81] -> [INCOMPLETE][82] ([i915#409])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb1/igt@prime_vgem@sync@bcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb2/igt@prime_vgem@sync@bcs0.html

  * igt@sysfs_clients@busy@vcs0:
    - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#3019])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl7/igt@sysfs_clients@busy@vcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl6/igt@sysfs_clients@busy@vcs0.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          [PASS][85] -> [FAIL][86] ([i915#3028])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-kbl4/igt@sysfs_clients@recycle.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl1/igt@sysfs_clients@recycle.html
    - shard-glk:          [PASS][87] -> [FAIL][88] ([i915#3028])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk5/igt@sysfs_clients@recycle.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk1/igt@sysfs_clients@recycle.html
    - shard-tglb:         [PASS][89] -> [FAIL][90] ([i915#3028])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb5/igt@sysfs_clients@recycle.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb2/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3026]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl1/igt@sysfs_clients@sema-10@vcs0.html
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([i915#3026])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb1/igt@sysfs_clients@sema-10@vcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb7/igt@sysfs_clients@sema-10@vcs0.html

  * igt@sysfs_clients@sema-25@vecs0:
    - shard-skl:          [PASS][94] -> [SKIP][95] ([fdo#109271])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl7/igt@sysfs_clients@sema-25@vecs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@sysfs_clients@sema-25@vecs0.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][96] ([i915#1037] / [i915#3063]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][98] ([i915#1895] / [i915#2295] / [i915#3031]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb1/igt@gem_exec_balancer@hang.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-apl:          [SKIP][100] ([fdo#109271]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-apl2/igt@gem_exec_fair@basic-flow@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [SKIP][104] ([fdo#109271]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][106] ([i915#2842]) -> [PASS][107] +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html
    - shard-glk:          [FAIL][108] ([i915#2842]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk5/igt@gem_exec_fair@basic-pace@vcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk9/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][110] ([i915#2849]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-iclb:         [DMESG-WARN][112] ([i915#2803]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb2/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@gem_exec_schedule@u-fairslice@vcs0.html
    - shard-skl:          [DMESG-WARN][114] ([i915#1610] / [i915#2803]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl7/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [INCOMPLETE][116] ([i915#198]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl5/igt@i915_suspend@sysfs-reader.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][118] ([i915#54]) -> [PASS][119] +10 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][120] ([i915#2346]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-skl:          [DMESG-WARN][122] ([i915#1982]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [FAIL][124] ([i915#79]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][126] ([i915#1188]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][128] ([fdo#109441]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@sysfs_clients@recycle:
    - shard-iclb:         [FAIL][130] ([i915#3028]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb3/igt@sysfs_clients@recycle.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb4/igt@sysfs_clients@recycle.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-glk:          [FAIL][132] ([i915#3028]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk7/igt@sysfs_clients@recycle-many.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk7/igt@sysfs_clients@recycle-many.html
    - shard-tglb:         [FAIL][134] ([i915#3028]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb1/igt@sysfs_clients@recycle-many.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb6/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][136] ([i915#2851]) -> [FAIL][137] ([i915#2842])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-iclb:         [SKIP][138] ([i915#658]) -> [SKIP][139] ([i915#2920]) +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][140] ([i915#2920]) -> [SKIP][141] ([i915#658])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][142] ([i915#2295]) -> ([FAIL][143], [FAIL][144]) ([i915#2295] / [i915#2505] / [i915#3002])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-kbl2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl7/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][149], [FAIL][150], [FAIL][151]) ([i915#2295] / [i915#2724] / [i915#3002])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb4/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb6/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb8/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb6/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb3/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@r

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/index.html

--===============4550136101777504807==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftest: Fix an error code in mock_context_barrier()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87103/">https://patchwork.freedesktop.org/series/87103/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9777_full -&gt; Patchwork_19682_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19682_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl1/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#1729])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl1/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl3/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@gtt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@gem_userptr_blits@process-exit-mmap@gtt.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2574])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl8/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl2/igt@kms_color@pipe-a-ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_color@pipe-a-ctm-blue-to-red.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl2/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-snb6/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl2/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl7/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_content_protection@legacy.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl8/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html">FAIL</a> ([i915#54]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271]) +171 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk9/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2628])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-snb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109271]) +278 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#198] / [i915#2405])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +164 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk8/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb3/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb2/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-apl2/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl7/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_import_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb1/igt@prime_vgem@sync@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb2/igt@prime_vgem@sync@bcs0.html">INCOMPLETE</a> ([i915#409])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl7/igt@sysfs_clients@busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl6/igt@sysfs_clients@busy@vcs0.html">FAIL</a> ([i915#3019])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-kbl4/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk5/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb5/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb2/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl1/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915#3026]) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb1/igt@sysfs_clients@sema-10@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb7/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> ([i915#3026])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl7/igt@sysfs_clients@sema-25@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@sysfs_clients@sema-25@vecs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#1037] / [i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb1/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([i915#1895] / [i915#2295] / [i915#3031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@gem_exec_balancer@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-apl2/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-apl6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk5/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk9/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb2/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> ([i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl7/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl5/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl7/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-render-ytiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb3/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb4/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-glk7/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-glk7/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb1/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb6/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2851]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-kbl2/igt@runner@aborted.html">FAIL</a> ([i915#2295]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-kbl7/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#2505] / [i915#3002])</p>
</li>
<li>
<p>shard-iclb:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9777/shard-iclb8/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19682/shard-iclb2/igt@r">FAIL</a>) ([i915#2295] / [i915#2724] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4550136101777504807==--

--===============1238866424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1238866424==--
