Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E1330D98C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 13:10:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7C36EA8A;
	Wed,  3 Feb 2021 12:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9CD666EA8F;
 Wed,  3 Feb 2021 12:10:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95143A363D;
 Wed,  3 Feb 2021 12:10:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Feb 2021 12:10:49 -0000
Message-ID: <161235424957.946.451516077129899936@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203083841.19735-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203083841.19735-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Apply_VT-d_scanout_adjustment_to_the_VMA?=
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
Content-Type: multipart/mixed; boundary="===============1195260405=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1195260405==
Content-Type: multipart/alternative;
 boundary="===============7948529995090574833=="

--===============7948529995090574833==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Apply VT-d scanout adjustment to the VMA
URL   : https://patchwork.freedesktop.org/series/86625/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9721_full -> Patchwork_19569_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19569_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19569_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19569_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-hsw:          [PASS][2] -> [FAIL][3] +6 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw5/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw4/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-iclb:         [PASS][4] -> [FAIL][5] +10 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb7/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-2-pipe-a:
    - shard-glk:          [PASS][6] -> [FAIL][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk2/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-2-pipe-a.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk4/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-2-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_19569_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][10] -> [INCOMPLETE][11] ([i915#1895] / [i915#2295])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@gem_exec_balancer@hang.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][12] ([i915#198] / [i915#2624])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl9/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][13] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#1610] / [i915#2803])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk9/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk4/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][22] ([i915#1610] / [i915#2803])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl1/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl1/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#2190])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +154 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#1937])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [PASS][27] -> [WARN][28] ([i915#2681] / [i915#2684])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#2597])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-tglb8/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a:
    - shard-glk:          [PASS][33] -> [DMESG-WARN][34] ([i915#118] / [i915#95]) +43 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk4/igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk8/igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a.html

  * igt@kms_atomic_transition@modeset-transition@1x-outputs:
    - shard-iclb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1226]) +16 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@kms_atomic_transition@modeset-transition@1x-outputs.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb1/igt@kms_atomic_transition@modeset-transition@1x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-c:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#165] / [i915#180]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-c.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-c.html

  * igt@kms_available_modes_crc@available_mode_test_crc:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#1537])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@kms_available_modes_crc@available_mode_test_crc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_available_modes_crc@available_mode_test_crc.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2705])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl9/igt@kms_big_joiner@basic.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl10/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-iclb:         [PASS][43] -> [DMESG-WARN][44] ([i915#1149] / [i915#1226]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb4/igt@kms_color@pipe-a-ctm-green-to-red.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb4/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-iclb:         [PASS][45] -> [DMESG-FAIL][46] ([i915#1149] / [i915#1226]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb8/igt@kms_color@pipe-a-ctm-negative.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb8/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_color@pipe-b-ctm-max:
    - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#1292])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk9/igt@kms_color@pipe-b-ctm-max.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk4/igt@kms_color@pipe-b-ctm-max.html

  * igt@kms_color@pipe-b-degamma:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#71])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_color@pipe-b-degamma.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk6/igt@kms_color@pipe-b-degamma.html

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-hsw:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533]) +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw5/igt@kms_color@pipe-d-ctm-0-25.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +13 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl4/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-negative:
    - shard-hsw:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw5/igt@kms_color_chamelium@pipe-b-ctm-negative.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][56] ([i915#1319])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#54]) +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge:
    - shard-glk:          [PASS][59] -> [DMESG-FAIL][60] ([i915#118] / [i915#70] / [i915#95]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge:
    - shard-glk:          [PASS][61] -> [FAIL][62] ([i915#70]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
    - shard-iclb:         [PASS][63] -> [DMESG-FAIL][64] ([i915#1226] / [i915#54]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
    - shard-glk:          [PASS][65] -> [DMESG-FAIL][66] ([i915#118] / [i915#54] / [i915#95])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-iclb:         [PASS][67] -> [FAIL][68] ([i915#52] / [i915#54]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled:
    - shard-glk:          [PASS][69] -> [FAIL][70] ([i915#52] / [i915#54]) +6 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
    - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#177] / [i915#52] / [i915#54]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][73] -> [INCOMPLETE][74] ([i915#155] / [i915#180] / [i915#636])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-hsw:          [PASS][75] -> [INCOMPLETE][76] ([i915#2055] / [i915#2295])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#2122])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2642])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][80] -> [DMESG-FAIL][81] ([i915#1226]) +4 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a:
    - shard-glk:          [PASS][82] -> [DMESG-FAIL][83] ([i915#118] / [i915#95]) +6 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk2/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk4/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         [PASS][84] -> [FAIL][85] ([i915#49]) +52 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-glk:          [PASS][86] -> [DMESG-FAIL][87] ([i915#118] / [i915#49] / [i915#95])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#49]) +39 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-hsw:          NOTRUN -> [SKIP][90] ([fdo#109271]) +24 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-iclb:         [PASS][91] -> [SKIP][92] ([i915#668]) +5 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +22 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][94] ([i915#146] / [i915#198])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#1187])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#533])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:
    - shard-iclb:         [PASS][98] -> [FAIL][99] ([i915#53])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:
    - shard-glk:          [PASS][100] -> [FAIL][101] ([i915#53])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-glk:          [PASS][102] -> [FAIL][103] ([i915#1036])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-c-planes:
    - shard-iclb:         [PASS][104] -> [FAIL][105] ([i915#1036])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb5/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-glk:          [PASS][106] -> [FAIL][107] ([i915#1036] / [i915#533])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-iclb:         [PASS][108] -> [FAIL][109] ([i915#247]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb8/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb7/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#247]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk8/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk2/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:
    - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#2472]) +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html

  * igt@kms_plane@plane-position-hole-pipe-b-planes:
    - shard-iclb:         [PASS][114] -> [FAIL][115] ([i915#2472]) +3 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb3/igt@kms_plane@plane-position-hole-pipe-b-planes.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb5/igt@kms_plane@plane-position-hole-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][116] ([fdo#108145] / [i915#265])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-iclb:         [PASS][117] -> [FAIL][118] ([i915#265])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][119] ([fdo#108145] / [i915#265]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - shard-iclb:         [PASS][120] -> [FAIL][121] ([i915#2657]) +8 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_plane_cursor@pipe-a-overlay-size-64.html

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - shard-glk:          [PASS][122] -> [FAIL][123] ([i915#2657]) +5 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk6/igt@kms_plane_cursor@pipe-a-primary-size-64.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk6/igt@kms_plane_cursor@pipe-a-primary-size-64.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][124] -> [DMESG-WARN][125] ([i915#118] / [i915#2621] / [i915#95])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-glk:          [PASS][126] -> [FAIL][127] ([i915#899]) +4 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk8/igt@kms_plane_lowres@pipe-b-tiling-x.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk2/igt@kms_plane_lowres@pipe-b-tiling-x.html
    - shard-kbl:          [PASS][128] -> [DMESG-WARN][129] ([i915#165] / [i915#180] / [i915#78])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-x.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-iclb:         [PASS][130] -> [FAIL][131] ([i915#899]) +5 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-none.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb2/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-glk:          [PASS][132] -> [FAIL][133] ([i915#1779]) +4 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
    - shard-iclb:         [PASS][134] -> [FAIL][135] ([i915#1779]) +4 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb7/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#658]) +3 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_su@page_flip:
    - shard-apl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#658]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][138] -> [SKIP][139] ([fdo#109441]) +2 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][140] -> [DMESG-WARN][141] ([i915#180] / [i915#295])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-glk:          [PASS][142] -> [DMESG-WARN][143] ([i915#118] / [i915#295] / [i915#95])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_vblank@pi

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/index.html

--===============7948529995090574833==
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
<tr><td><b>Series:</b></td><td>drm/i915: Apply VT-d scanout adjustment to the VMA</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86625/">https://patchwork.freedesktop.org/series/86625/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9721_full -&gt; Patchwork_19569_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19569_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19569_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19569_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw5/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw4/igt@kms_big_fb@linear-64bpp-rotate-180.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb7/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">FAIL</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-2-pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk2/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-2-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk4/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-2-pipe-a.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19569_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@gem_exec_balancer@hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb2/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([i915#1895] / [i915#2295])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl9/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#198] / [i915#2624])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk9/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk4/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html">SKIP</a> ([fdo#109271]) +154 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk4/igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk8/igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition@1x-outputs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@kms_atomic_transition@modeset-transition@1x-outputs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb1/igt@kms_atomic_transition@modeset-transition@1x-outputs.html">DMESG-WARN</a> ([i915#1226]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-c.html">DMESG-WARN</a> ([i915#165] / [i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_available_modes_crc@available_mode_test_crc:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@kms_available_modes_crc@available_mode_test_crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_available_modes_crc@available_mode_test_crc.html">FAIL</a> ([i915#1537])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl9/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl10/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb4/igt@kms_color@pipe-a-ctm-green-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb4/igt@kms_color@pipe-a-ctm-green-to-red.html">DMESG-WARN</a> ([i915#1149] / [i915#1226]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-negative:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb8/igt@kms_color@pipe-a-ctm-negative.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb8/igt@kms_color@pipe-a-ctm-negative.html">DMESG-FAIL</a> ([i915#1149] / [i915#1226]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-max:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk9/igt@kms_color@pipe-b-ctm-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk4/igt@kms_color@pipe-b-ctm-max.html">FAIL</a> ([i915#1292])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_color@pipe-b-degamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk6/igt@kms_color@pipe-b-degamma.html">FAIL</a> ([i915#71])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw5/igt@kms_color@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109271] / [i915#533]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl4/igt@kms_color@pipe-d-ctm-max.html">SKIP</a> ([fdo#109271]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-negative:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw5/igt@kms_color_chamelium@pipe-b-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html">FAIL</a> ([i915#54]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html">DMESG-FAIL</a> ([i915#118] / [i915#70] / [i915#95]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html">FAIL</a> ([i915#70]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html">DMESG-FAIL</a> ([i915#1226] / [i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html">DMESG-FAIL</a> ([i915#118] / [i915#54] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html">FAIL</a> ([i915#52] / [i915#54]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html">FAIL</a> ([i915#52] / [i915#54]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html">FAIL</a> ([i915#177] / [i915#52] / [i915#54]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">INCOMPLETE</a> ([i915#2055] / [i915#2295])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">DMESG-FAIL</a> ([i915#1226]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk2/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk4/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a.html">DMESG-FAIL</a> ([i915#118] / [i915#95]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">FAIL</a> ([i915#49]) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">DMESG-FAIL</a> ([i915#118] / [i915#49] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html">FAIL</a> ([i915#49]) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-hsw5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#668]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html">FAIL</a> ([i915#53])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html">FAIL</a> ([i915#53])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html">FAIL</a> ([i915#1036])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-pipe-c-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb5/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html">FAIL</a> ([i915#1036])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">FAIL</a> ([i915#1036] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-b-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb8/igt@kms_plane@plane-position-covered-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb7/igt@kms_plane@plane-position-covered-pipe-b-planes.html">FAIL</a> ([i915#247]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-c-planes:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk8/igt@kms_plane@plane-position-covered-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk2/igt@kms_plane@plane-position-covered-pipe-c-planes.html">FAIL</a> ([i915#247]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html">FAIL</a> ([i915#2472]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-pipe-b-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb3/igt@kms_plane@plane-position-hole-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb5/igt@kms_plane@plane-position-hole-pipe-b-planes.html">FAIL</a> ([i915#2472]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-64:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb5/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">FAIL</a> ([i915#2657]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-64:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk6/igt@kms_plane_cursor@pipe-a-primary-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk6/igt@kms_plane_cursor@pipe-a-primary-size-64.html">FAIL</a> ([i915#2657]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html">DMESG-WARN</a> ([i915#118] / [i915#2621] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk8/igt@kms_plane_lowres@pipe-b-tiling-x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk2/igt@kms_plane_lowres@pipe-b-tiling-x.html">FAIL</a> ([i915#899]) +4 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-x.html">DMESG-WARN</a> ([i915#165] / [i915#180] / [i915#78])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-none:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-none.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb2/igt@kms_plane_lowres@pipe-c-tiling-none.html">FAIL</a> ([i915#899]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">FAIL</a> ([i915#1779]) +4 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb7/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">FAIL</a> ([i915#1779]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-apl1/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/shard-glk7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/shard-glk7/igt@kms_vblank@pi">DMESG-WARN</a> ([i915#118] / [i915#295] / [i915#95])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7948529995090574833==--

--===============1195260405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1195260405==--
