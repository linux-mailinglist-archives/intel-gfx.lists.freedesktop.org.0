Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 622E32B53BD
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 22:26:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB456EA92;
	Mon, 16 Nov 2020 21:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54F516E079;
 Mon, 16 Nov 2020 21:26:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4CD33A47E6;
 Mon, 16 Nov 2020 21:26:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhang Xiaoxu" <zhangxiaoxu5@huawei.com>
Date: Mon, 16 Nov 2020 21:26:17 -0000
Message-ID: <160556197727.30810.11818897307853145201@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201116144112.3673011-1-zhangxiaoxu5@huawei.com>
In-Reply-To: <20201116144112.3673011-1-zhangxiaoxu5@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Fix_wrong_return_value_of_perf=5Fseries=5Fen?=
 =?utf-8?q?gines=28=29?=
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
Content-Type: multipart/mixed; boundary="===============0197722111=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0197722111==
Content-Type: multipart/alternative;
 boundary="===============8274608431696771314=="

--===============8274608431696771314==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Fix wrong return value of perf_series_engines()
URL   : https://patchwork.freedesktop.org/series/83890/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9337_full -> Patchwork_18914_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18914_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18914_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18914_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-hsw:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-hsw8/igt@gem_exec_whisper@basic-contexts-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-hsw7/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-glk7/igt@kms_big_fb@linear-64bpp-rotate-0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9337_full and Patchwork_18914_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18914_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@suspend:
    - shard-iclb:         [PASS][4] -> [INCOMPLETE][5] ([i915#1185] / [i915#2483])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-iclb2/igt@gem_eio@suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb3/igt@gem_eio@suspend.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][6] -> [DMESG-WARN][7] ([i915#1982]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-glk4/igt@i915_pm_rpm@drm-resources-equal.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-glk1/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1635] / [i915#1982]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-apl4/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-apl3/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#54]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982] / [i915#2295])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2346])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#79]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#109441]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#1542])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-glk7/igt@perf@polling-parameterized.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-glk4/igt@perf@polling-parameterized.html

  * igt@prime_vgem@sync@rcs0:
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([i915#409])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-tglb6/igt@prime_vgem@sync@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb7/igt@prime_vgem@sync@rcs0.html
    - shard-iclb:         [PASS][28] -> [INCOMPLETE][29] ([i915#409])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-iclb4/igt@prime_vgem@sync@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb3/igt@prime_vgem@sync@rcs0.html

  
#### Possible fixes ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-snb:          [INCOMPLETE][30] ([i915#1037]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-snb6/igt@core_hotunplug@hotrebind-lateclose.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@core_hotunplug@unbind-rebind:
    - shard-skl:          [DMESG-WARN][32] ([i915#1982]) -> [PASS][33] +7 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl2/igt@core_hotunplug@unbind-rebind.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl9/igt@core_hotunplug@unbind-rebind.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][34] ([i915#658]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-iclb7/igt@feature_discovery@psr2.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_blits@basic:
    - shard-skl:          [TIMEOUT][36] ([i915#2502]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl4/igt@gem_blits@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl3/igt@gem_blits@basic.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-snb:          [FAIL][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-snb2/igt@gem_exec_whisper@basic-contexts-all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-snb4/igt@gem_exec_whisper@basic-contexts-all.html
    - shard-glk:          [INCOMPLETE][40] -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-glk7/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-hsw:          [INCOMPLETE][42] -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-hsw6/igt@gem_partial_pwrite_pread@write.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-hsw1/igt@gem_partial_pwrite_pread@write.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-iclb:         [DMESG-WARN][44] ([i915#1982]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-iclb3/igt@i915_module_load@reload-with-fault-injection.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-kbl:          [DMESG-WARN][46] ([i915#1982]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-kbl3/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-kbl2/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-skl:          [FAIL][48] ([i915#54]) -> [PASS][49] +5 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [FAIL][50] ([i915#1635] / [i915#79]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [FAIL][52] ([i915#2122]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-apl:          [DMESG-WARN][54] ([i915#1635] / [i915#1982]) -> [PASS][55] +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-apl7/igt@kms_frontbuffer_tracking@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-apl7/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][58] ([i915#1188]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][60] ([fdo#108145] / [i915#265]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][62] ([fdo#109441]) -> [PASS][63] +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-snb:          [FAIL][64] ([i915#2037]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-snb2/igt@perf_pmu@busy-check-all@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-snb4/igt@perf_pmu@busy-check-all@rcs0.html

  * igt@perf_pmu@busy-check-all@vcs0:
    - shard-snb:          [FAIL][66] ([i915#1820]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-snb2/igt@perf_pmu@busy-check-all@vcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-snb4/igt@perf_pmu@busy-check-all@vcs0.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][68] ([i915#1982] / [i915#262]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-iclb3/igt@perf_pmu@module-unload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb8/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][70] ([i915#1226]) -> [SKIP][71] ([fdo#109349])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [INCOMPLETE][72] ([i915#198]) -> [FAIL][73] ([i915#1188])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [DMESG-WARN][74] ([i915#2411]) -> [INCOMPLETE][75] ([i915#1436] / [i915#1798] / [i915#1982] / [i915#456])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [INCOMPLETE][76] ([i915#1436] / [i915#456]) -> [DMESG-WARN][77] ([i915#1436])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-tglb7/igt@kms_psr@psr2_suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb7/igt@kms_psr@psr2_suspend.html

  * igt@runner@aborted:
    - shard-iclb:         [FAIL][78] ([i915#2295] / [i915#2439] / [i915#483]) -> ([FAIL][79], [FAIL][80]) ([i915#2295] / [i915#2426] / [i915#2439] / [i915#409] / [i915#483])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-iclb6/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb5/igt@runner@aborted.html
    - shard-glk:          ([FAIL][81], [FAIL][82]) ([i915#1611] / [i915#2263] / [i915#2295] / [i915#2439] / [i915#483] / [k.org#202321]) -> [FAIL][83] ([i915#1611] / [i915#2295] / [i915#2439] / [i915#483] / [k.org#202321])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-glk3/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-glk3/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-glk3/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][84], [FAIL][85]) ([i915#1602] / [i915#1814] / [i915#2295] / [i915#2439]) -> ([FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89]) ([i915#1602] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#2439] / [i915#409])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-tglb7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-tglb8/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb1/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb7/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb7/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb7/igt@runner@aborted.html
    - shard-skl:          [FAIL][90] ([i915#1611] / [i915#2295] / [i915#2439]) -> [FAIL][91] ([i915#1611] / [i915#2295] / [i915#2439] / [i915#483])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-skl6/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1798]: https://gitlab.freedesktop.org/drm/intel/issues/1798
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2037]: https://gitlab.freedesktop.org/drm/intel/issues/2037
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2263]: https://gitlab.freedesktop.org/drm/intel/issues/2263
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2483]: https://gitlab.freedesktop.org/drm/intel/issues/2483
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9337 -> Patchwork_18914

  CI-20190529: 20190529
  CI_DRM_9337: 85c17640f343b06686aa677896856f2dc1388c21 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5853: cbe997b92e4b96f8c29b5e2d49fb2ed88e1de3e2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18914: cf9833f4e829bed87ee90940067e1f5b46f1c598 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/index.html

--===============8274608431696771314==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Fix wrong return value o=
f perf_series_engines()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/83890/">https://patchwork.freedesktop.org/series/83890/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18914/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18914/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9337_full -&gt; Patchwork_18914_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18914_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18914_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18914_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-hsw8/igt@gem_exec_whisper@basic-contexts-all.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
14/shard-hsw7/igt@gem_exec_whisper@basic-contexts-all.html">FAIL</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18914/shard-glk7/igt@kms_big_fb@linear-64bpp-rotate=
-0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9337_full and Patchwork_18=
914_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18914_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-iclb2/igt@gem_eio@suspend.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb3/ig=
t@gem_eio@suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1185">i915#1185</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2483">i915#2483</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl1/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18914/shard-skl10/igt@i915_module_load@reload-with-fault-injection.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1982">i915#1982</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-glk4/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/s=
hard-glk1/igt@i915_pm_rpm@drm-resources-equal.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-apl4/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1891=
4/shard-apl3/igt@kms_big_fb@linear-64bpp-rotate-180.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18914/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i91=
5#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18914/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-t=
ransitions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18914/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18914/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18914/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/s=
hard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-glk7/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-=
glk4/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9337/shard-tglb6/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb7/=
igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9337/shard-iclb4/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb3/=
igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-snb6/igt@core_hotunplug@hotrebind-lateclose.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1037">=
i915#1037</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18914/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1=
982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18914/shard-skl9/igt@core_hotunplug@unbind-rebind.html">PASS</a> +7 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard=
-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl4/igt@gem_blits@basic.html">TIMEOUT</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-sk=
l3/igt@gem_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9337/shard-snb2/igt@gem_exec_whisper@basic-contexts-all.html">FAIL</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1891=
4/shard-snb4/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9337/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html">INCOMP=
LETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18914/shard-glk7/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a></=
p>
</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-hsw6/igt@gem_partial_pwrite_pread@write.html">INCOMPLETE=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
914/shard-hsw1/igt@gem_partial_pwrite_pread@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-iclb3/igt@i915_module_load@reload-with-fault-injection.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18914/shard-iclb1/igt@i915_module_load@reload-with-fault=
-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-kbl3/igt@kms_big_fb@linear-16bpp-rotate-0.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i9=
15#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18914/shard-kbl2/igt@kms_big_fb@linear-16bpp-rotate-0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
54">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18914/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscre=
en.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18914/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-ed=
p1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18914/shard-skl5/igt@kms_flip@plain-flip-ts-check-interrup=
tible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-apl7/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915=
#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982=
">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18914/shard-apl7/igt@kms_frontbuffer_tracking@basic.html">PASS</a=
> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pr=
i-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb8/igt@kms_frontbuff=
er_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/sha=
rd-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18914/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-cons=
tant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/=
shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@rcs0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-snb2/igt@perf_pmu@busy-check-all@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2037">i915#2037</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1891=
4/shard-snb4/igt@perf_pmu@busy-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@vcs0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-snb2/igt@perf_pmu@busy-check-all@vcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1820">i915#1820</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1891=
4/shard-snb4/igt@perf_pmu@busy-check-all@vcs0.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-iclb3/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/262">i915#2=
62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18914/shard-iclb8/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18914/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
914/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2411">i915#2411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18914/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-=
pipe-c.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1798">i915#1798</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/456">i915#456</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-tglb7/igt@kms_psr@psr2_suspend.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/456">i915#456=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8914/shard-tglb7/igt@kms_psr@psr2_suspend.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9337/shard-iclb6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/s=
hard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_18914/shard-iclb5/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295=
">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2439">i915#2439</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/409">i915#409</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-glk3/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1611">i915#1611</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2263">i915#2263</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla=
.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-glk3/igt@runne=
r@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1611">i915#1611</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla=
.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9337/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9337/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2439">i915#2439</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18914/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/shard-tglb7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18914/shard-tglb7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915=
#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439=
">i915#2439</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/409">i915#409</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9337/shard-skl6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18914/s=
hard-skl3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9337 -&gt; Patchwork_18914</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9337: 85c17640f343b06686aa677896856f2dc1388c21 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5853: cbe997b92e4b96f8c29b5e2d49fb2ed88e1de3e2 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18914: cf9833f4e829bed87ee90940067e1f5b46f1c598 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8274608431696771314==--

--===============0197722111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0197722111==--
