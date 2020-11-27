Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 482F52C6A6E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 18:11:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6558B6EE72;
	Fri, 27 Nov 2020 17:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E6DE6EE70;
 Fri, 27 Nov 2020 17:11:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0512AA8835;
 Fri, 27 Nov 2020 17:11:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 27 Nov 2020 17:11:50 -0000
Message-ID: <160649711098.26781.18344509970713233115@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201127125027.27674-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201127125027.27674-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Replace_direct_?=
 =?utf-8?q?submit_with_direct_call_to_tasklet?=
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
Content-Type: multipart/mixed; boundary="===============0143710464=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0143710464==
Content-Type: multipart/alternative;
 boundary="===============9134841910273494015=="

--===============9134841910273494015==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] drm/i915/gt: Replace direct submit with direct call to tasklet
URL   : https://patchwork.freedesktop.org/series/84345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9398_full -> Patchwork_19000_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19000_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19000_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19000_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@full-late-pulse:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb2/igt@gem_exec_balancer@full-late-pulse.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb3/igt@gem_exec_balancer@full-late-pulse.html

  * igt@gem_exec_balancer@sliced:
    - shard-tglb:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb3/igt@gem_exec_balancer@sliced.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb5/igt@gem_exec_balancer@sliced.html
    - shard-iclb:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb6/igt@gem_exec_balancer@sliced.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb4/igt@gem_exec_balancer@sliced.html

  * igt@i915_selftest@mock@shmem:
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb4/igt@i915_selftest@mock@shmem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb4/igt@i915_selftest@mock@shmem.html
    - shard-kbl:          [PASS][9] -> [INCOMPLETE][10] +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-kbl2/igt@i915_selftest@mock@shmem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3/igt@i915_selftest@mock@shmem.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_texture_buffer_object@render-no-bo (NEW):
    - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][11] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/pig-skl-6260u/spec@arb_texture_buffer_object@render-no-bo.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9398_full and Patchwork_19000_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  


### New Piglit tests (4) ###

  * spec@arb_point_parameters@arb_point_parameters-point-attenuation:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_buffer_object@max-size:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_buffer_object@render-no-bo:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_buffer_object@unused-name:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19000_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1037] / [i915#1982])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl2/igt@gem_eio@in-flight-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@full:
    - shard-kbl:          [PASS][14] -> [INCOMPLETE][15] ([i915#794])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-kbl6/igt@gem_exec_balancer@full.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl2/igt@gem_exec_balancer@full.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [PASS][16] -> [DMESG-WARN][17] ([i915#118] / [i915#95])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1436] / [i915#716])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#2292])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl4/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl10/igt@i915_module_load@reload.html
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#2292])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb7/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb5/igt@i915_module_load@reload.html
    - shard-iclb:         [PASS][24] -> [INCOMPLETE][25] ([i915#2292])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb7/igt@i915_module_load@reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb2/igt@i915_module_load@reload.html
    - shard-kbl:          [PASS][26] -> [INCOMPLETE][27] ([i915#2292])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-kbl4/igt@i915_module_load@reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3/igt@i915_module_load@reload.html
    - shard-glk:          [PASS][28] -> [INCOMPLETE][29] ([i915#2292])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-glk8/igt@i915_module_load@reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk6/igt@i915_module_load@reload.html
    - shard-apl:          [PASS][30] -> [INCOMPLETE][31] ([i915#2292])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-apl8/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl1/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-no-display:
    - shard-iclb:         [PASS][32] -> [INCOMPLETE][33] ([i915#2292] / [i915#2502])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb1/igt@i915_module_load@reload-no-display.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb1/igt@i915_module_load@reload-no-display.html
    - shard-apl:          [PASS][34] -> [INCOMPLETE][35] ([i915#2292] / [i915#2502])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-apl7/igt@i915_module_load@reload-no-display.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl2/igt@i915_module_load@reload-no-display.html
    - shard-glk:          [PASS][36] -> [INCOMPLETE][37] ([i915#2292] / [i915#2502])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-glk6/igt@i915_module_load@reload-no-display.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk8/igt@i915_module_load@reload-no-display.html
    - shard-tglb:         [PASS][38] -> [INCOMPLETE][39] ([i915#2292] / [i915#2502])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb7/igt@i915_module_load@reload-no-display.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb7/igt@i915_module_load@reload-no-display.html
    - shard-skl:          [PASS][40] -> [INCOMPLETE][41] ([i915#2292] / [i915#2502])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl3/igt@i915_module_load@reload-no-display.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl8/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-skl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl3/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl9/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:
    - shard-hsw:          [PASS][44] -> [DMESG-WARN][45] ([i915#1982])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-hsw7/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-hsw1/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-apl:          [PASS][46] -> [DMESG-WARN][47] ([i915#1982]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-apl3/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl3/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-tglb:         [PASS][48] -> [FAIL][49] ([i915#2346])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#79])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-tglb:         [PASS][52] -> [DMESG-WARN][53] ([i915#1982]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#1188])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][60] -> [INCOMPLETE][61] ([i915#198])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][62] -> [INCOMPLETE][63] ([i915#1373] / [i915#2292] / [i915#262])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb5/igt@perf_pmu@module-unload.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb1/igt@perf_pmu@module-unload.html
    - shard-kbl:          [PASS][64] -> [INCOMPLETE][65] ([i915#2292] / [i915#262])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-kbl4/igt@perf_pmu@module-unload.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl6/igt@perf_pmu@module-unload.html
    - shard-apl:          [PASS][66] -> [INCOMPLETE][67] ([i915#2292] / [i915#262])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-apl4/igt@perf_pmu@module-unload.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl3/igt@perf_pmu@module-unload.html
    - shard-iclb:         [PASS][68] -> [INCOMPLETE][69] ([i915#1373] / [i915#2292] / [i915#262])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb6/igt@perf_pmu@module-unload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb8/igt@perf_pmu@module-unload.html
    - shard-glk:          [PASS][70] -> [INCOMPLETE][71] ([i915#2292] / [i915#262])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-glk5/igt@perf_pmu@module-unload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk1/igt@perf_pmu@module-unload.html
    - shard-skl:          [PASS][72] -> [INCOMPLETE][73] ([i915#2292] / [i915#262])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl2/igt@perf_pmu@module-unload.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][74] -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl5/igt@i915_pm_sseu@full-enable.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl6/igt@i915_pm_sseu@full-enable.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [FAIL][76] ([i915#54]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][78] ([i915#2346]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [DMESG-WARN][80] ([i915#1982]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][82] ([i915#79]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-tglb:         [DMESG-WARN][84] ([i915#1982]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][86] ([i915#1188]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][88] ([fdo#109441]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_sysfs_edid_timing:
    - shard-hsw:          [FAIL][90] ([IGT#2]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-hsw6/igt@kms_sysfs_edid_timing.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-hsw2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-snb:          [DMESG-WARN][92] ([i915#42]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-snb4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-snb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][94] ([i915#1542]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl7/igt@perf@blocking.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl5/igt@perf@blocking.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][96] ([i915#51]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl10/igt@perf@short-reads.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@gem_ctx_ringsize@idle:
    - shard-hsw:          [SKIP][98] ([fdo#109271]) -> [INCOMPLETE][99] ([i915#2055])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-hsw1/igt@gem_ctx_ringsize@idle.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-hsw6/igt@gem_ctx_ringsize@idle.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-glk:          [INCOMPLETE][100] ([i915#2635]) -> [DMESG-WARN][101] ([i915#2635])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][102] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][103] ([i915#1982])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][104] ([fdo#109271] / [i915#2295] / [i915#483]) -> [FAIL][105] ([fdo#109271] / [i915#2295])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-hsw1/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-hsw5/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][106], [FAIL][107]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115]) ([fdo#109271] / [i915#1436] / [i915#1814] / [i915#2292] / [i915#2295] / [i915#2426] / [i915#2505] / [i915#2722] / [i915#483] / [i915#716] / [k.org#204565])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-kbl3/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-kbl1/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl7/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl2/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl6/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl6/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][116], [FAIL][117]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125]) ([i915#1580] / [i915#1814] / [i915#2292] / [i915#2295] / [i915#2426] / [i915#2722] / [i915#483] / [k.org#204565])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb3/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb6/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb7/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb5/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb2/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb5/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb8/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb8/igt@runner@aborted.html
    - shard-apl:          ([FAIL][126], [FAIL][127]) ([fdo#109271] / [i915#1814] / [i915#2295] / [i915#2722]) -> ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([fdo#109271] / [i915#1610] / [i915#1814] / [i915#2292] / [i915#2295] / [i915#2426] / [i915#2722] / [k.org#204565])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-apl8/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-apl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl8/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl3/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl2/igt@runner@aborted.html
    - shard-glk:          ([FAIL][136], [FAIL][137]) ([i915#1814] / [i915#2295] / [i915#2722] / [k.org#202321]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1814] / [i915#2292] / [i915#2295] / [i915#2426] / [i915#2722] / [i915#483] / [k.org#202321] / [k.org#204565])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-glk9/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-glk1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk8/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk8/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk9/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk3/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk6/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][146], [FAIL][147]) ([i915#1602] / [i915#2295] / [i915#2722]) -> ([FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#1602] / [i915#1759] / [i915#1852] / [i915#2045] / [i915#2292] / [i915#2295] / [i915#2426] / [i915#2722] / [k.org#204565])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb2/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb1/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb1/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb8/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb8/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb7/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb5/igt@runner@aborted.html
    - shard-skl:          ([FAIL][156], [FAIL][157]) ([i915#1814] / [i915#2029] / [i915#2295] / [i915#2722]) -> ([FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164]) ([i915#1436] / [i915#1982] / [i915#2029] / [i915#2292] / [i915#2295] / [i915#2426] / [i915#2722] / [k.org#204565])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl6/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl3/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl8/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl10/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl4/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl3/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl10/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl4/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1852]: https://gitlab.freedesktop.org/drm/intel/issues/1852
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2635]: https://gitlab.freedesktop.org/drm/intel/issues/2635
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#54]: https://gitlab.freedesktop.org/drm/intel

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/index.html

--===============9134841910273494015==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] drm/i915/gt: R=
eplace direct submit with direct call to tasklet</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84345/">https://patchwork.freedesktop.org/series/84345/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19000/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19000/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9398_full -&gt; Patchwork_19000_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19000_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19000_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19000_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full-late-pulse:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-tglb2/igt@gem_exec_balancer@full-late-pulse.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1900=
0/shard-tglb3/igt@gem_exec_balancer@full-late-pulse.html">INCOMPLETE</a> +4=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-tglb3/igt@gem_exec_balancer@sliced.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tg=
lb5/igt@gem_exec_balancer@sliced.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-iclb6/igt@gem_exec_balancer@sliced.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-ic=
lb4/igt@gem_exec_balancer@sliced.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@shmem:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-iclb4/igt@i915_selftest@mock@shmem.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-ic=
lb4/igt@i915_selftest@mock@shmem.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-kbl2/igt@i915_selftest@mock@shmem.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl=
3/igt@i915_selftest@mock@shmem.html">INCOMPLETE</a> +4 similar issues</p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_texture_buffer_object@render-no-bo (NEW):<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19000/pig-skl-6260u/spec@arb_texture_buffer_object@=
render-no-bo.html">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9398_full and Patchwork_19=
000_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New Piglit tests (4)</h3>
<ul>
<li>
<p>spec@arb_point_parameters@arb_point_parameters-point-attenuation:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_buffer_object@max-size:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_buffer_object@render-no-bo:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_buffer_object@unused-name:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19000_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl2/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-s=
kl1/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-kbl6/igt@gem_exec_balancer@full.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl2=
/igt@gem_exec_balancer@full.html">INCOMPLETE</a> ([i915#794])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000=
/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> /=
 [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-kbl7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard=
-kbl3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / [i915#716=
])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-skl4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1=
0/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2292">i915#2292</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-tglb7/igt@i915_module_load@reload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tgl=
b5/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2292">i915#2292</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-iclb7/igt@i915_module_load@reload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-icl=
b2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2292">i915#2292</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-kbl4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3=
/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2292">i915#2292</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-glk8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk6=
/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2292">i915#2292</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-apl8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl1=
/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2292">i915#2292</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-iclb1/igt@i915_module_load@reload-no-display.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1900=
0/shard-iclb1/igt@i915_module_load@reload-no-display.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2502">i915=
#2502</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-apl7/igt@i915_module_load@reload-no-display.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000=
/shard-apl2/igt@i915_module_load@reload-no-display.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2=
502</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-glk6/igt@i915_module_load@reload-no-display.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000=
/shard-glk8/igt@i915_module_load@reload-no-display.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2=
502</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-tglb7/igt@i915_module_load@reload-no-display.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1900=
0/shard-tglb7/igt@i915_module_load@reload-no-display.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2502">i915=
#2502</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-skl3/igt@i915_module_load@reload-no-display.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000=
/shard-skl8/igt@i915_module_load@reload-no-display.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2=
502</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl3/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/s=
hard-skl9/igt@i915_pm_rpm@modeset-lpsp-stress.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-hsw7/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19000/shard-hsw1/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-apl3/igt@kms_cursor_legacy@basic-flip-before-cursor-atom=
ic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19000/shard-apl3/igt@kms_cursor_legacy@basic-flip-before-cursor-=
atomic.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19000/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/234=
6">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19000/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> =
([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-i=
ndfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19000/shard-tglb7/igt@kms_frontbuffer_tracking@fbc=
-1p-offscren-pri-indfb-draw-render.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-=
skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19000/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/sha=
rd-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19000/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-tglb5/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb=
1/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1373">i915#1373</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-kbl4/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl6/=
igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-apl4/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl3/=
igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-iclb6/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb=
8/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1373">i915#1373</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-glk5/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk1/=
igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-skl2/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1/=
igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl5/igt@i915_pm_sseu@full-enable.html">FAIL</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-sk=
l6/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel">i915#54</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1900=
0/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19000/shard-skl8/igt@kms_cursor_legacy@flip=
-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9000/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19000/shard-skl1/igt@kms_flip@flip-vs-expired-vb=
lank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pr=
i-indfb-draw-render.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb8/igt@kms_frontbuff=
er_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/sh=
ard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19000/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-hsw6/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/sh=
ard-hsw2/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-snb4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/42">i915#42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19000/shard-snb2/igt@kms_vblank@pipe-a-ts-continuation-dpms=
-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl7/igt@perf@blocking.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl5/ig=
t@perf@blocking.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl10/igt@perf@short-reads.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1/ig=
t@perf@short-reads.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_ringsize@idle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-hsw1/igt@gem_ctx_ringsize@idle.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/s=
hard-hsw6/igt@gem_ctx_ringsize@idle.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2635">i915#2635</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19000/shard-glk3/igt@kms_pipe_crc_basic@suspend-read-crc-pi=
pe-c.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2635">i915#2635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19000/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-cons=
tant-alpha-min.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9398/shard-hsw1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000=
/shard-hsw5/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9000/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19000/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19000/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19000/shard-kbl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i915=
#2292</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295=
">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/483">i915#483</a> / [i915#716] / [k.org#204565])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-iclb6/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19000/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb2/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19000/shard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb5/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19000/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-iclb8/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19000/shard-iclb8/igt@runner@aborted.html">FAIL</a>) (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1580">i915#1580</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#181=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i9=
15#2292</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/22=
95">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/483">i915#483</a> / [k.org#204565])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-apl4/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2722">i915#2722</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19000/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19000/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl8/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19000/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-apl6/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19000/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1=
814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">=
i915#2292</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2722">i915#2722</a> / [k.org#204565])</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-glk1/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2722">i915#2722</a> / [k.org#202321]) -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk8/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19000/shard-glk8/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk9/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19000/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk6/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19000/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-glk1/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19000/shard-glk6/igt@runner@aborted.html">FAIL</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i915=
#2292</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295=
">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/483">i915#483</a> / [k.org#202321] / [k.org#204565])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-tglb2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb1/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
000/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19000/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19000/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-tglb7/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19000/shard-tglb5/igt@runner@aborted.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1759">i915#1759</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1852">i915#=
1852</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2045"=
>i915#2045</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2292">i915#2292</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2722">i915#2722</a> / [k.org#204565])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9398/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9398/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2722">i915#2722</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl8/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19000/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19000/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19000/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19000/shard-skl4/igt@runner=
@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2292">i915#2292</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / [k.org#=
204565])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============9134841910273494015==--

--===============0143710464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0143710464==--
