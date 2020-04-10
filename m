Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DBB1A3EC4
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 05:33:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EAC6EC52;
	Fri, 10 Apr 2020 03:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E556B6EC50;
 Fri, 10 Apr 2020 03:33:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF62EA0091;
 Fri, 10 Apr 2020 03:33:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Fri, 10 Apr 2020 03:33:42 -0000
Message-ID: <158648962288.10045.4567320467170853188@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200409060646.30817-1-anshuman.gupta@intel.com>
In-Reply-To: <20200409060646.30817-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5_lpsp_support_for_lpsp_igt_=28rev7=29?=
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

Series: i915 lpsp support for lpsp igt (rev7)
URL   : https://patchwork.freedesktop.org/series/74648/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8281_full -> Patchwork_17264_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17264_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17264_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17264_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-snb:          [SKIP][1] ([fdo#109271]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-snb4/igt@i915_pm_lpsp@screens-disabled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-snb4/igt@i915_pm_lpsp@screens-disabled.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8281_full and Patchwork_17264_full:

### New IGT tests (7) ###

  * igt@gem_exec_store@pages:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_lpsp@kms-lpsp:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp-1:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.10, 0.45] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_17264_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#1066])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-snb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#54] / [i915#93] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#54] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109349])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-kbl:          [PASS][17] -> [INCOMPLETE][18] ([i915#1297])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl4/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl7/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
    - shard-apl:          [PASS][19] -> [INCOMPLETE][20] ([i915#1297])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl6/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-apl6/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#699] / [i915#93] / [i915#95]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl3/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling-yf.html
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#49]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][29] -> [INCOMPLETE][30] ([i915#155])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#1559] / [i915#93] / [i915#95])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl6/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#1559] / [i915#95])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl8/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-apl2/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [FAIL][41] ([i915#1528]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][45] ([i915#454]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-skl:          [SKIP][47] ([fdo#109271]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl2/igt@i915_pm_lpsp@screens-disabled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-skl9/igt@i915_pm_lpsp@screens-disabled.html
    - shard-tglb:         [SKIP][49] ([fdo#109301]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-tglb3/igt@i915_pm_lpsp@screens-disabled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-tglb8/igt@i915_pm_lpsp@screens-disabled.html
    - shard-kbl:          [SKIP][51] ([fdo#109271]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl3/igt@i915_pm_lpsp@screens-disabled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl1/igt@i915_pm_lpsp@screens-disabled.html
    - shard-apl:          [SKIP][53] ([fdo#109271]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl1/igt@i915_pm_lpsp@screens-disabled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-apl8/igt@i915_pm_lpsp@screens-disabled.html
    - shard-glk:          [SKIP][55] ([fdo#109271]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-glk6/igt@i915_pm_lpsp@screens-disabled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-glk6/igt@i915_pm_lpsp@screens-disabled.html
    - shard-iclb:         [SKIP][57] ([fdo#109301]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb1/igt@i915_pm_lpsp@screens-disabled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-iclb3/igt@i915_pm_lpsp@screens-disabled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-kbl:          [FAIL][59] ([i915#54] / [i915#93] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-kbl:          [FAIL][63] ([i915#54]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
    - shard-apl:          [FAIL][65] ([i915#54]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-glk:          [FAIL][67] ([i915#52] / [i915#54]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb7/igt@kms_psr@psr2_suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-glk9/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-glk2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@kms_fbcon_fbt@fbc:
    - shard-kbl:          [FAIL][75] ([i915#64]) -> [FAIL][76] ([i915#93] / [i915#95])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl1/igt@kms_fbcon_fbt@fbc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl4/igt@kms_fbcon_fbt@fbc.html
    - shard-apl:          [FAIL][77] ([i915#1525]) -> [FAIL][78] ([i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl4/igt@kms_fbcon_fbt@fbc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-apl4/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][79] ([i915#95]) -> [FAIL][80] ([i915#1525])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [FAIL][81] ([i915#93] / [i915#95]) -> [FAIL][82] ([i915#64])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-apl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [FAIL][84] ([fdo#108145] / [i915#265] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109301]: https://bugs.freedesktop.org/show_bug.cgi?id=109301
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1297]: https://gitlab.freedesktop.org/drm/intel/issues/1297
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5581 -> IGTPW_4438
  * Linux: CI_DRM_8281 -> Patchwork_17264

  CI-20190529: 20190529
  CI_DRM_8281: 4d6c69198d6840226f92f2c4645e2c8260ca3e83 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4438: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4438/index.html
  IGT_5581: ab0620e555119ec55f12ba9ab9e6e9246d407648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17264: 314d3d56f22db613bee1306e86f1a3bf2a41edee @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17264/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
