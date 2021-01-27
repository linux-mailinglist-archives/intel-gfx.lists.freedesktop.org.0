Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 869D43051A0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 06:02:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37AC6E51C;
	Wed, 27 Jan 2021 05:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12BCA6E51B;
 Wed, 27 Jan 2021 05:02:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C4ABA47EB;
 Wed, 27 Jan 2021 05:02:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 27 Jan 2021 05:02:39 -0000
Message-ID: <161172375904.11913.4035938332795963957@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126232138.30167-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210126232138.30167-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Teach_the_i915=5Fdependency_to_use_a_double-lock?=
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
Content-Type: multipart/mixed; boundary="===============1427569406=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1427569406==
Content-Type: multipart/alternative;
 boundary="===============7813856622801433430=="

--===============7813856622801433430==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Teach the i915_dependency to use a double-lock
URL   : https://patchwork.freedesktop.org/series/86317/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9685_full -> Patchwork_19510_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19510_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][1] -> [TIMEOUT][2] ([i915#2918])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk9/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2842]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1610] / [i915#2803])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@i915_selftest@live@evict:
    - shard-skl:          NOTRUN -> [INCOMPLETE][11] ([i915#198])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl7/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][12] ([i915#1886] / [i915#2291])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl7/igt@i915_selftest@live@gt_pm.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#198])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2122]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
    - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#111825])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-glk:          NOTRUN -> [SKIP][27] ([fdo#109271]) +17 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk9/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][28] ([fdo#108145] / [i915#265])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#658])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109642] / [fdo#111068] / [i915#658])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [TIMEOUT][34] ([i915#2918]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][36] ([i915#2842]) -> [PASS][37] +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][38] ([i915#2842]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][40] ([i915#2842]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][42] ([i915#2842]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [FAIL][44] ([i915#2849]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [FAIL][46] ([i915#2389]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice-all:
    - shard-glk:          [DMESG-WARN][48] ([i915#1610]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk1/igt@gem_exec_schedule@u-fairslice-all.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk9/igt@gem_exec_schedule@u-fairslice-all.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-skl:          [DMESG-WARN][50] ([i915#1610] / [i915#2803]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl8/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl8/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][52] ([i915#2597]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-tglb7/igt@kms_async_flips@test-time-stamp.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-tglb7/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][54] ([i915#54]) -> [PASS][55] +7 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][56] ([i915#79]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][58] ([i915#2598]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][60] ([i915#2122]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][62] ([i915#1188]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][64] ([fdo#109441]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm:
    - shard-skl:          [DMESG-WARN][66] ([i915#1982]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html

  * igt@prime_vgem@coherency-blt:
    - shard-glk:          [INCOMPLETE][68] ([i915#2944]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk3/igt@prime_vgem@coherency-blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk3/igt@prime_vgem@coherency-blt.html

  * {igt@sysfs_clients@sema-10@vecs0}:
    - shard-apl:          [SKIP][70] ([fdo#109271]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-apl6/igt@sysfs_clients@sema-10@vecs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-apl2/igt@sysfs_clients@sema-10@vecs0.html

  * {igt@sysfs_clients@sema-25@vcs0}:
    - shard-skl:          [SKIP][72] ([fdo#109271]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl7/igt@sysfs_clients@sema-25@vcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl3/igt@sysfs_clients@sema-25@vcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][74] ([i915#2842]) -> [SKIP][75] ([fdo#109271])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][76] ([i915#2681] / [i915#2684]) -> [WARN][77] ([i915#2684])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][78] ([i915#658]) -> [SKIP][79] ([i915#2920]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][80] ([i915#2920]) -> [SKIP][81] ([i915#658]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][82], [FAIL][83], [FAIL][84]) ([i915#2295] / [i915#2505]) -> ([FAIL][85], [FAIL][86], [FAIL][87]) ([i915#2295])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-kbl4/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-kbl6/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-kbl2/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-kbl7/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-kbl4/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-kbl1/igt@runner@aborted.html
    - shard-glk:          ([FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92]) ([i915#2295] / [i915#2426] / [i915#2722] / [i915#409] / [k.org#202321]) -> ([FAIL][93], [FAIL][94], [FAIL][95]) ([i915#2295] / [k.org#202321])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk7/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk3/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk1/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk5/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk3/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk4/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk8/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99]) ([i915#2295] / [i915#2426]) -> ([FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2295] / [i915#2426])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl2/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl5/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl8/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl9/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl10/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl5/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl10/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl8/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2918]: https://gitlab.freedesktop.org/drm/intel/issues/2918
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2944]: https://gitlab.freedesktop.org/drm/intel/issues/2944
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9685 -> Patchwork_19510

  CI-20190529: 20190529
  CI_DRM_9685: e183766462e67962d64faca5108dc6b55f6bc88b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5973: 7ae3d0d68e6bf4c5e404c87b570773d1b3173d47 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19510: 26d12ec829139128002f00b30f564adcf709c9ed @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/index.html

--===============7813856622801433430==
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
<tr><td><b>Series:</b></td><td>drm/i915: Teach the i915_dependency to use a=
 double-lock</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86317/">https://patchwork.freedesktop.org/series/86317/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19510/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19510/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9685_full -&gt; Patchwork_19510_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19510_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19510/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2918">i915#2=
918</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1951=
0/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19510/shard-glk9/igt@gem_exec_fair@basic-none-vip@r=
cs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/sh=
ard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19510/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1951=
0/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#=
2803</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19510/shard-skl7/igt@i915_selftest@live@evict.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19510/shard-skl7/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1886">i915#1886</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-s=
kl10/igt@kms_color@pipe-b-ctm-0-25.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19510/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i915=
#54</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19510/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-inter=
ruptible@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19510/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19510/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19510/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19510/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2p=
-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19510/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19510/shard-glk9/igt@kms_frontbuffer_tracking@psr-s=
uspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19510/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19510/shard-skl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-iclb=
5/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-ic=
lb8/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html">TI=
MEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2918"=
>i915#2918</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19510/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
10/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19510/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9510/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9685/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19510/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +1 si=
milar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9685/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#28=
49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19510/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2389">i91=
5#2389</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19510/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-glk1/igt@gem_exec_schedule@u-fairslice-all.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i=
915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19510/shard-glk9/igt@gem_exec_schedule@u-fairslice-all.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl8/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19510/shard-skl8/igt@gem_exec_schedule@u-fairslice@vcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-tglb7/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19510/shard-tglb7/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19510/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.=
html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptibl=
e@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19510/shard-glk8/igt@kms_flip@2x-flip-vs-exp=
ired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19510/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19510/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/=
shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19510/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19510/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-dpms=
-rpm.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-blt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-glk3/igt@prime_vgem@coherency-blt.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2944">i915#2944<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
510/shard-glk3/igt@prime_vgem@coherency-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-10@vecs0}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-apl6/igt@sysfs_clients@sema-10@vecs0.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
10/shard-apl2/igt@sysfs_clients@sema-10@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-25@vcs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl7/igt@sysfs_clients@sema-25@vcs0.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1951=
0/shard-skl3/igt@sysfs_clients@sema-25@vcs0.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
510/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19510/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19510/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-=
dmg-area-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19510/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-s=
f-dmg-area-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9685/shard-kbl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>) -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-kbl=
7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19510/shard-kbl4/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-=
kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9685/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-glk5/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_96=
85/shard-glk3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a> / <a =
href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9510/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-glk8/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19510/shard-glk6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9685/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl5/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9685/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/shard-skl9/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2426">i915#2426</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19510/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard-skl=
5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19510/shard-skl10/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19510/shard=
-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19510/shard-skl8/igt@runner@aborted.html">FAIL<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814=
">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2426">i915#2426</a>)</p>
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
<li>Linux: CI_DRM_9685 -&gt; Patchwork_19510</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9685: e183766462e67962d64faca5108dc6b55f6bc88b @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5973: 7ae3d0d68e6bf4c5e404c87b570773d1b3173d47 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19510: 26d12ec829139128002f00b30f564adcf709c9ed @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7813856622801433430==--

--===============1427569406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1427569406==--
