Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 139831FC26F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 01:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A37A56E9D7;
	Tue, 16 Jun 2020 23:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 086F96E9D1;
 Tue, 16 Jun 2020 23:48:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05422A0091;
 Tue, 16 Jun 2020 23:48:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Tue, 16 Jun 2020 23:48:25 -0000
Message-ID: <159235130501.4598.16064304597414655657@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200616163406.27387-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200616163406.27387-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Apply_Wa=5F14011264657=3Agen11+?=
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

Series: drm/i915: Apply Wa_14011264657:gen11+
URL   : https://patchwork.freedesktop.org/series/78430/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8635_full -> Patchwork_17966_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17966_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17966_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17966_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl6/igt@gem_exec_balancer@bonded-early.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-kbl7/igt@gem_exec_balancer@bonded-early.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format:
    - shard-tglb:         [PASS][3] -> [FAIL][4] +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb7/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-tglb1/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html

  * igt@kms_plane_scaling@pipe-d-scaler-with-pixel-format:
    - shard-tglb:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-tglb2/igt@kms_plane_scaling@pipe-d-scaler-with-pixel-format.html

  
Known issues
------------

  Here are the changes found in Patchwork_17966_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#1528])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl7/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-skl3/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#95]) +17 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl8/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-apl4/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][10] -> [DMESG-WARN][11] ([i915#118] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_shrink@reclaim:
    - shard-hsw:          [PASS][12] -> [SKIP][13] ([fdo#109271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-hsw5/igt@gem_shrink@reclaim.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-hsw1/igt@gem_shrink@reclaim.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][14] -> [DMESG-FAIL][15] ([i915#118] / [i915#95])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [PASS][16] -> [FAIL][17] ([i915#79])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180]) +5 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +7 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl8/igt@kms_flip_tiling@flip-changes-tiling.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-skl10/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][22] -> [DMESG-FAIL][23] ([i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#93] / [i915#95]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][26] -> [DMESG-WARN][27] ([i915#1982])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([fdo#108145] / [i915#265])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-rotation:
    - shard-iclb:         [PASS][30] -> [FAIL][31] ([fdo#109052]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-rotation.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-iclb4/igt@kms_plane_scaling@pipe-b-scaler-with-rotation.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][34] -> [FAIL][35] ([i915#1820])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_freq@sysfs:
    - shard-apl:          [DMESG-WARN][36] ([i915#95]) -> [PASS][37] +19 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl7/igt@gem_ctx_freq@sysfs.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-apl8/igt@gem_ctx_freq@sysfs.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [DMESG-WARN][38] ([i915#118] / [i915#95]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk5/igt@gem_exec_schedule@smoketest-all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-glk9/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest@bcs0:
    - shard-tglb:         [INCOMPLETE][40] ([i915#1829]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb1/igt@gem_exec_schedule@smoketest@bcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-tglb2/igt@gem_exec_schedule@smoketest@bcs0.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl9/igt@i915_module_load@reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-skl9/igt@i915_module_load@reload.html
    - shard-tglb:         [DMESG-WARN][44] ([i915#402]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb8/igt@i915_module_load@reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-tglb7/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][46] ([IGT#5]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][48] ([i915#79]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][52] ([i915#165] / [i915#78]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl2/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-kbl3/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-apl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [DMESG-WARN][56] ([i915#1982]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][58] ([fdo#109441]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][60] ([i915#1542]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb8/igt@perf@blocking-parameterized.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-iclb1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-apl:          [INCOMPLETE][62] ([i915#1635] / [i915#1958]) -> [TIMEOUT][63] ([i915#1635] / [i915#1958])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl8/igt@gem_exec_reloc@basic-concurrent16.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-apl1/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-tglb:         [DMESG-FAIL][64] ([i915#1149] / [i915#1982]) -> [FAIL][65] ([i915#1149] / [i915#315])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb6/igt@kms_color@pipe-c-ctm-0-25.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-tglb3/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-apl:          [DMESG-FAIL][66] ([i915#95]) -> [FAIL][67] ([i915#1525])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl4/igt@kms_fbcon_fbt@fbc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-apl2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][68] ([i915#1525]) -> [DMESG-FAIL][69] ([i915#95])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][70] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][71] ([fdo#108145] / [i915#1982])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109052]: https://bugs.freedesktop.org/show_bug.cgi?id=109052
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1829]: https://gitlab.freedesktop.org/drm/intel/issues/1829
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8635 -> Patchwork_17966

  CI-20190529: 20190529
  CI_DRM_8635: f9acdb898773f94ac1bcb9a8826596f88412a53b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17966: 71e1726c303a2e7fd80ac1e3e8a4578ffee856c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17966/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
