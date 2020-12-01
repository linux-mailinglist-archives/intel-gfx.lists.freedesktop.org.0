Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B682CB06E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:46:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B3036E949;
	Tue,  1 Dec 2020 22:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B8756E94C;
 Tue,  1 Dec 2020 22:46:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81842A0019;
 Tue,  1 Dec 2020 22:46:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Tue, 01 Dec 2020 22:46:46 -0000
Message-ID: <160686280652.6987.17766913777325559882@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201201175735.1377372-1-lucas.demarchi@intel.com>
In-Reply-To: <20201201175735.1377372-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=2C_rkl=2C_dg1=3A_Apply_WA=5F1406941453_to_TGL=2C_RKL_?=
 =?utf-8?q?and_DG1_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1461430936=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1461430936==
Content-Type: multipart/alternative;
 boundary="===============0511826449997717920=="

--===============0511826449997717920==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tgl, rkl, dg1: Apply WA_1406941453 to TGL, RKL and DG1 (rev3)
URL   : https://patchwork.freedesktop.org/series/83383/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9415_full -> Patchwork_19028_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9415_full and Patchwork_19028_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 199 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19028_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#658])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@feature_discovery@psr2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb1/igt@feature_discovery@psr2.html

  * igt@gem_eio@hibernate:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] ([i915#1226])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb4/igt@gem_eio@hibernate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb6/igt@gem_eio@hibernate.html

  * igt@gem_exec_fence@parallel@bcs0:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk5/igt@gem_exec_fence@parallel@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-glk1/igt@gem_exec_fence@parallel@bcs0.html

  * igt@gem_exec_fence@syncobj-timeline-wait:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl7/igt@gem_exec_fence@syncobj-timeline-wait.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl1/igt@gem_exec_fence@syncobj-timeline-wait.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#151])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#2346])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-apl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
    - shard-hsw:          [PASS][25] -> [INCOMPLETE][26] ([i915#2055] / [i915#2295])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-hsw5/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#198]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109642] / [fdo#111068])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb1/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#43])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl7/igt@kms_vblank@pipe-a-accuracy-idle.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-apl2/igt@kms_vblank@pipe-a-accuracy-idle.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][41] ([i915#1436] / [i915#716]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [WARN][43] ([i915#1519]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][45] ([i915#54]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][47] ([i915#2346]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [INCOMPLETE][51] ([i915#198]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][53] ([i915#2122]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:
    - shard-iclb:         [FAIL][57] ([i915#53]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb3/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-snb:          [DMESG-WARN][59] ([i915#42]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-snb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl6/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl4/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:
    - shard-iclb:         [FAIL][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb3/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - shard-iclb:         [FAIL][65] ([i915#2657]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb3/igt@kms_plane_cursor@pipe-b-viewport-size-128.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][67] ([fdo#109642] / [fdo#111068]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][71] ([i915#1542]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl10/igt@perf@blocking.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl8/igt@perf@blocking.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][73] ([i915#1542]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk2/igt@perf@polling-parameterized.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-glk6/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [FAIL][75] ([i915#2346]) -> [DMESG-FAIL][76] ([i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [DMESG-FAIL][77] ([i915#1982]) -> [DMESG-WARN][78] ([i915#1982])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          [DMESG-FAIL][79] ([fdo#108145] / [i915#1982]) -> [FAIL][80] ([fdo#108145] / [i915#265])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [INCOMPLETE][81] ([i915#2295] / [i915#2635]) -> [DMESG-WARN][82] ([i915#2635] / [i915#295])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][83], [FAIL][84], [FAIL][85]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#2505] / [i915#2722] / [i915#483] / [i915#602]) -> ([FAIL][86], [FAIL][87], [FAIL][88]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#2722] / [i915#483] / [i915#602])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-kbl2/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-kbl3/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-kbl6/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-kbl7/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-kbl7/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-kbl2/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][89], [FAIL][90], [FAIL][91]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][92], [FAIL][93], [FAIL][94]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2722] / [i915#483])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb3/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb4/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb7/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb6/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][95], [FAIL][96]) ([i915#1436] / [i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][97], [FAIL][98]) ([i915#2295] / [i915#2722] / [i915#483])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl1/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl9/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl2/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2635]: https://gitlab.freedesktop.org/drm/intel/issues/2635
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2657]: https://gitlab.freedesktop.org/drm/intel/issues/2657
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9415 -> Patchwork_19028

  CI-20190529: 20190529
  CI_DRM_9415: 7170e8ad5a8764257c383c8b677ca6398ba6b1af @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5877: c36f7973d1ee7886ec65fa16c7b1fd8dc5a33caa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19028: 6737e67a7ac7000a2acc096fb23710a602274124 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/index.html

--===============0511826449997717920==
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
<tr><td><b>Series:</b></td><td>drm/i915/tgl, rkl, dg1: Apply WA_1406941453 =
to TGL, RKL and DG1 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/83383/">https://patchwork.freedesktop.org/series/83383/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19028/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19028/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9415_full -&gt; Patchwork_19028_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9415_full and Patchwork_19=
028_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 199 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19028_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-icl=
b1/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb4/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb6/ig=
t@gem_eio@hibernate.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@bcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-glk5/igt@gem_exec_fence@parallel@bcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shar=
d-glk1/igt@gem_exec_fence@parallel@bcs0.html">DMESG-WARN</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-wait:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl7/igt@gem_exec_fence@syncobj-timeline-wait.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
028/shard-skl1/igt@gem_exec_fence@syncobj-timeline-wait.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#19=
82</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1902=
8/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19028/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9415/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19028/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9415/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19028/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
028/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19028/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#23=
46</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-apl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomi=
c-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19028/shard-apl6/igt@kms_cursor_legacy@short-flip-aft=
er-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19028/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-hsw5/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19028/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdm=
i-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2055">i915#2055</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a=
-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19028/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interrupt=
ible@a-dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl=
5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19028/shard-skl10/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/198">i915#198</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19028/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb=
3/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard=
-iclb1/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-accuracy-idle:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-apl7/igt@kms_vblank@pipe-a-accuracy-idle.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/s=
hard-apl2/igt@kms_vblank@pipe-a-accuracy-idle.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19028/shard-skl6/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9028/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19028/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.h=
tml">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i=
915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19028/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19028/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-inter=
ruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19028/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptibl=
e@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19028/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-in=
terruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mm=
ap-wc.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19028/shard-tglb8/igt@kms_frontbuffer_tracking@fb=
c-rgb101010-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb2/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-seque=
nce.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/53">i915#53</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19028/shard-iclb3/igt@kms_pipe_crc_basic@read-crc-pipe-b-fram=
e-sequence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/42">i915#42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19028/shard-snb4/igt@kms_plane@plane-panning-bo=
ttom-right-suspend-pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl6/igt@kms_plane@plane-position-covered-pipe-a-planes.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19028/shard-skl4/igt@kms_plane@plane-position-covered-p=
ipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premu=
lt-vs-constant.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19028/shard-iclb3/igt@kms_plane_alpha_blend@pipe-c-c=
overage-vs-premult-vs-constant.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-128:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb2/igt@kms_plane_cursor@pipe-b-viewport-size-128.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2657=
">i915#2657</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19028/shard-iclb3/igt@kms_plane_cursor@pipe-b-viewport-size-128.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> =
/ <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19028/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9028/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl10/igt@perf@blocking.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl8/i=
gt@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-glk2/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/=
shard-glk6/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legac=
y.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19028/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-=
crc-legacy.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a=
-edp1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19028/shard-skl4/igt@kms_flip@plain-flip-fb-recre=
ate-interruptible@a-edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">=
DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
08145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19028/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alp=
ha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2635">i915#2635</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19028/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation=
-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2635">i915#2635</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/295">i915#295</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-kbl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9415/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#=
2505</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722"=
>i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/483">i915#483</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/602">i915#602</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19028/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-kbl7/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19028/shard-kbl2/igt@runner@aborted.html">FAIL</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#=
1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295"=
>i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/483">i915#483</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/602">i915#602</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9415/shard-iclb7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19028/shard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19028/shard-iclb6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19028/shard-iclb3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#272=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i91=
5#483</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9415/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl9/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19028/shard-skl2/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9028/shard-skl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
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
<li>Linux: CI_DRM_9415 -&gt; Patchwork_19028</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9415: 7170e8ad5a8764257c383c8b677ca6398ba6b1af @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5877: c36f7973d1ee7886ec65fa16c7b1fd8dc5a33caa @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19028: 6737e67a7ac7000a2acc096fb23710a602274124 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0511826449997717920==--

--===============1461430936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1461430936==--
