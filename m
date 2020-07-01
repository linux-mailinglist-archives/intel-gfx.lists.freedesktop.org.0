Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CAF210578
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 09:53:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C523D8930F;
	Wed,  1 Jul 2020 07:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C6FCF8930F;
 Wed,  1 Jul 2020 07:53:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF127A0071;
 Wed,  1 Jul 2020 07:53:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Wed, 01 Jul 2020 07:53:41 -0000
Message-ID: <159359002177.13865.10236090576685213700@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200630233310.10191-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200630233310.10191-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Correctly_advertise_HBR3_for_GEN11+_=28rev2=29?=
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

Series: drm/i915/dp: Correctly advertise HBR3 for GEN11+ (rev2)
URL   : https://patchwork.freedesktop.org/series/61546/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8679_full -> Patchwork_18050_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18050_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18050_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18050_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@most-busy-idle-check-all@vcs0:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-hsw1/igt@perf_pmu@most-busy-idle-check-all@vcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_18050_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@prime:
    - shard-tglb:         [PASS][2] -> [INCOMPLETE][3] ([i915#750])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-tglb6/igt@drm_import_export@prime.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-tglb5/igt@drm_import_export@prime.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][4] -> [INCOMPLETE][5] ([i915#69])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-skl6/igt@gem_workarounds@suspend-resume.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-skl1/igt@gem_workarounds@suspend-resume.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl6/igt@i915_suspend@debugfs-reader.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982]) +12 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-skl6/igt@kms_color@pipe-c-ctm-0-25.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-skl2/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#93] / [i915#95]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl7/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl6/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#79])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1635] / [i915#95]) +9 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#1188])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([fdo#108145] / [i915#265]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][22] -> [DMESG-FAIL][23] ([fdo#108145] / [i915#1982])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-kbl:          [PASS][24] -> [DMESG-FAIL][25] ([i915#95])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl1/igt@kms_prime@basic-crc@second-to-first.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl1/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#198])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-skl6/igt@kms_psr@suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-skl3/igt@kms_psr@suspend.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][30] -> [FAIL][31] ([i915#31])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-hsw4/igt@kms_setmode@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-hsw4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-wait-idle:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-apl4/igt@kms_vblank@pipe-c-wait-idle.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-apl1/igt@kms_vblank@pipe-c-wait-idle.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][34] -> [DMESG-WARN][35] ([i915#402])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-tglb6/igt@perf_pmu@module-unload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-tglb6/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@ptrace:
    - shard-apl:          [DMESG-WARN][36] ([i915#1635] / [i915#95]) -> [PASS][37] +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-apl8/igt@gem_mmap_gtt@ptrace.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-apl8/igt@gem_mmap_gtt@ptrace.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement:
    - shard-glk:          [DMESG-WARN][38] ([i915#118] / [i915#95]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][40] ([i915#359]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][42] ([i915#79]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][44] ([i915#1982]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-hsw6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-hsw6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][46] ([i915#180]) -> [PASS][47] +8 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack:
    - shard-iclb:         [DMESG-WARN][48] ([i915#1982]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [DMESG-WARN][50] ([i915#1982]) -> [PASS][51] +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-tglb7/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-tglb2/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][52] ([fdo#109441]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-b-query-idle:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +10 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-skl10/igt@kms_vblank@pipe-b-query-idle.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-skl2/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][56] ([i915#1820]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][58] ([i915#1319] / [i915#1958]) -> [TIMEOUT][59] ([i915#1319] / [i915#1958] / [i915#2119]) +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl1/igt@kms_content_protection@atomic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][60] ([i915#1319] / [i915#1958]) -> [TIMEOUT][61] ([i915#1319] / [i915#2119])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl1/igt@kms_content_protection@srm.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][62] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][63] ([i915#93] / [i915#95])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-snb:          [TIMEOUT][64] ([i915#1958]) -> [TIMEOUT][65] ([i915#1958] / [i915#2119]) +6 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][66] ([i915#79]) -> [FAIL][67] ([i915#46])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-apl:          [SKIP][68] ([fdo#109271] / [i915#1635]) -> [SKIP][69] ([fdo#109271]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-apl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-apl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-apl:          [SKIP][70] ([fdo#109271]) -> [SKIP][71] ([fdo#109271] / [i915#1635]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-apl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-apl3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_lease@lessee_list:
    - shard-hsw:          [TIMEOUT][72] ([i915#1958]) -> [TIMEOUT][73] ([i915#1958] / [i915#2119]) +5 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-hsw4/igt@kms_lease@lessee_list.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-hsw7/igt@kms_lease@lessee_list.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-kbl:          [DMESG-FAIL][74] ([fdo#108145] / [i915#1982] / [i915#95]) -> [DMESG-FAIL][75] ([fdo#108145] / [i915#95])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][76], [FAIL][77]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#716]) -> ([FAIL][78], [FAIL][79]) ([fdo#109271] / [i915#1635] / [i915#716])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-apl7/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-apl1/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-apl7/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-apl3/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][80], [FAIL][81]) ([i915#1764] / [i915#2110]) -> [FAIL][82] ([i915#2110])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-tglb3/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8679/shard-tglb1/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/shard-tglb6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#359]: https://gitlab.freedesktop.org/drm/intel/issues/359
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8679 -> Patchwork_18050

  CI-20190529: 20190529
  CI_DRM_8679: 3e20fe558381bf798308d3a1171948676af22376 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18050: f1aacc5b50136283c0d2f57dc7e0ff66a52e0fe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18050/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
