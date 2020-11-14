Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FF02B2ABB
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 03:01:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64926E8CF;
	Sat, 14 Nov 2020 02:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E0856E8CF;
 Sat, 14 Nov 2020 02:01:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 594A2A3ECB;
 Sat, 14 Nov 2020 02:01:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 14 Nov 2020 02:01:18 -0000
Message-ID: <160531927835.18247.10426402251230093166@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Eliminate_intel=5Fatomic=5Fcrtc=5Fstate=5Ffor=5Feach?=
 =?utf-8?q?=5Fplane=5Fstate=28=29_from_skl+_wm_code_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0605134978=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0605134978==
Content-Type: multipart/alternative;
 boundary="===============5638827933427162058=="

--===============5638827933427162058==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Eliminate intel_atomic_crtc_state_for_each_plane_state() from skl+ wm code (rev2)
URL   : https://patchwork.freedesktop.org/series/83589/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9326_full -> Patchwork_18900_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_18900_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18900_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18900_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][1] ([i915#1515]) -> [WARN][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-abs-neg-ivec2-int (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][3] +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-abs-neg-ivec2-int.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9326_full and Patchwork_18900_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 199 pass(s)
    - Exec time: [0.0] s

  


### New Piglit tests (8) ###

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-clamp-uvec2-uint-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-bitand-ivec2-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-bitxor-uvec2-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-abs-neg-ivec2-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-div-int-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-lshift-uint-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-selection-bool-ivec2-ivec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-trunc-float:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18900_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#2389])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#198])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#54]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#177] / [i915#52] / [i915#54])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#79])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#2122])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][18] -> [DMESG-WARN][19] ([i915#1982]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-iclb:         [PASS][20] -> [DMESG-WARN][21] ([i915#1982])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#49])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#123])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1982]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl9/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl4/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-iclb2/igt@kms_psr@psr2_basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-iclb5/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-c-wait-forked-busy:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1635] / [i915#1982]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-apl3/igt@kms_vblank@pipe-c-wait-forked-busy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-apl3/igt@kms_vblank@pipe-c-wait-forked-busy.html

  * igt@perf@polling-parameterized:
    - shard-apl:          [PASS][32] -> [FAIL][33] ([i915#1542] / [i915#1635])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-apl3/igt@perf@polling-parameterized.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-apl3/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-hsw:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-hsw4/igt@perf_pmu@module-unload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-hsw1/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][36] ([i915#118] / [i915#95]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-glk1/igt@gem_exec_whisper@basic-queues-priority.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@i915_module_load@reload:
    - shard-iclb:         [DMESG-WARN][38] ([i915#1982]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-iclb2/igt@i915_module_load@reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-iclb7/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@i2c:
    - shard-glk:          [DMESG-WARN][40] ([i915#1982]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-glk9/igt@i915_pm_rpm@i2c.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-glk6/igt@i915_pm_rpm@i2c.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [FAIL][42] ([i915#54]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][44] ([i915#96]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - shard-apl:          [DMESG-WARN][46] ([i915#1635] / [i915#1982]) -> [PASS][47] +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-apl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][48] ([i915#198]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][50] ([i915#79]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][52] ([fdo#108145] / [i915#265]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +7 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-skl2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-skl2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][56] ([fdo#109441]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@polling-parameterized:
    - shard-hsw:          [FAIL][58] ([i915#1542]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-hsw6/igt@perf@polling-parameterized.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-hsw4/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][60] ([i915#1226]) -> [SKIP][61] ([fdo#109349])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][62], [FAIL][63]) ([fdo#109271] / [i915#2295] / [i915#2439]) -> ([FAIL][64], [FAIL][65]) ([fdo#109271] / [i915#2295] / [i915#2439] / [i915#483])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-hsw5/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-hsw2/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-hsw1/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-hsw6/igt@runner@aborted.html
    - shard-glk:          ([FAIL][66], [FAIL][67], [FAIL][68]) ([i915#1611] / [i915#1814] / [i915#2295] / [i915#2439] / [i915#86] / [k.org#202321]) -> ([FAIL][69], [FAIL][70], [FAIL][71]) ([i915#1611] / [i915#1814] / [i915#2295] / [i915#2439] / [i915#483] / [i915#86] / [k.org#202321])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-glk1/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-glk8/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-glk8/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-glk3/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-glk5/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-glk5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#86]: https://gitlab.freedesktop.org/drm/intel/issues/86
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9326 -> Patchwork_18900

  CI-20190529: 20190529
  CI_DRM_9326: 3048c2a1dcf02422e89930148ffad9e91d690499 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5850: 9748a4a0f93d108955d374a866e60cb962da9b5d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18900: bd8a2bc2ea0fd0f4495abc2eea16ac09377b25cf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/index.html

--===============5638827933427162058==
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
<tr><td><b>Series:</b></td><td>drm/i915: Eliminate intel_atomic_crtc_state_=
for_each_plane_state() from skl+ wm code (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/83589/">https://patchwork.freedesktop.org/series/83589/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18900/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18900/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9326_full -&gt; Patchwork_18900_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_18900_full need to be verifi=
ed<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18900_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18900_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rc6_residency@rc6-fence:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1515">i915#151=
5</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18900/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> +1 sim=
ilar issue</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand=
-abs-neg-ivec2-int (NEW):<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18900/pig-icl-1065g7/spec@arb_tessellation_shader@e=
xecution@built-in-functions@tcs-op-bitand-abs-neg-ivec2-int.html">INCOMPLET=
E</a> +7 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9326_full and Patchwork_18=
900_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 199 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New Piglit tests (8)</h3>
<ul>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-clamp-uvec=
2-uint-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-=
bitand-ivec2-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-=
bitxor-uvec2-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-=
abs-neg-ivec2-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-div-int=
-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-lshift-=
uint-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-selecti=
on-bool-ivec2-ivec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-trunc-floa=
t:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18900_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8900/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900=
/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18900/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18900/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-unt=
iled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18900/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cp=
u-untiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/177">i915#177</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/52">i915#52</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18900/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18900/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18900/shard-tglb8/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-badstride.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18900/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-badstride.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-s=
hrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18900/shard-skl4/igt@kms_frontbuffer_tracking@psr=
-1p-offscren-pri-shrfb-draw-mmap-wc.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
900/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-256:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl9/igt@kms_plane_cursor@pipe-a-overlay-size-256.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18900/shard-skl4/igt@kms_plane_cursor@pipe-a-overlay-size-256.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-iclb5/i=
gt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked-busy:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-apl3/igt@kms_vblank@pipe-c-wait-forked-busy.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1890=
0/shard-apl3/igt@kms_vblank@pipe-c-wait-forked-busy.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-apl3/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-=
apl3/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-hsw4/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-hsw1=
/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</l=
i>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-glk1/igt@gem_exec_whisper@basic-queues-priority.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/11=
8">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/95">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18900/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-iclb2/igt@i915_module_load@reload.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
900/shard-iclb7/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-glk9/igt@i915_pm_rpm@i2c.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/sha=
rd-glk6/igt@i915_pm_rpm@i2c.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18900/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">P=
ASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/96">i915#96</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18900/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-at=
omic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-apl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-yt=
iled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18900/shard-apl4/igt@kms_draw_crc@draw-metho=
d-xrgb2101010-mmap-wc-ytiled.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
00/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915=
#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18900/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18900/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-skl2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18900/shard-skl2/igt@kms_plane_cursor@pipe-a-viewport-size-1=
28.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-iclb3/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
00/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-hsw6/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/=
shard-hsw4/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18900/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-hsw:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-hsw5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-hsw2/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2439">i915#2439</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_18900/shard-hsw1/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
00/shard-hsw6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9326/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/shard-glk8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9326/shard-glk8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/86">i915#86=
</a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.o=
rg#202321</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18900/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18900/shard-glk5/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18900/shard-glk5/igt@runner@aborted.html">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#229=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i9=
15#2439</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
3">i915#483</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/86">i915#86</a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=
=3D202321">k.org#202321</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9326 -&gt; Patchwork_18900</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9326: 3048c2a1dcf02422e89930148ffad9e91d690499 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5850: 9748a4a0f93d108955d374a866e60cb962da9b5d @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18900: bd8a2bc2ea0fd0f4495abc2eea16ac09377b25cf @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5638827933427162058==--

--===============0605134978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0605134978==--
