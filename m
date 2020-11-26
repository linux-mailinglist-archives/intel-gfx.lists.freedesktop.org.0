Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D772C5A92
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 18:29:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61CF6E98D;
	Thu, 26 Nov 2020 17:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8D076E988;
 Thu, 26 Nov 2020 17:29:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FDF6AA01E;
 Thu, 26 Nov 2020 17:29:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Nov 2020 17:29:30 -0000
Message-ID: <160641177061.4111.14496296863431484532@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201126140407.31952-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201126140407.31952-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/5=5D_drm/i915/gt=3A_Decouple_comple?=
 =?utf-8?q?ted_requests_on_unwind?=
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
Content-Type: multipart/mixed; boundary="===============1546866211=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1546866211==
Content-Type: multipart/alternative;
 boundary="===============1731709674200214329=="

--===============1731709674200214329==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/5] drm/i915/gt: Decouple completed requests on unwind
URL   : https://patchwork.freedesktop.org/series/84301/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9394_full -> Patchwork_18989_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18989_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18989_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18989_full:

### IGT changes ###

#### Possible regressions ####

  * igt@syncobj_timeline@wait-all-snapshot:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl4/igt@syncobj_timeline@wait-all-snapshot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl2/igt@syncobj_timeline@wait-all-snapshot.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9394_full and Patchwork_18989_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18989_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-snb2/igt@gem_eio@kms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-glk9/igt@gem_exec_whisper@basic-queues-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#96])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-hsw2/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-hsw1/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-glk5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset@ab-hdmi-a1-hdmi-a2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-glk2/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-tglb6/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-tglb8/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl9/igt@kms_hdr@bpc-switch.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#53])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-apl6/igt@kms_plane_cursor@pipe-a-primary-size-256.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-apl7/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982] / [i915#262])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-apl8/igt@perf_pmu@module-unload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-apl2/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-iclb:         [DMESG-WARN][35] ([i915#1982]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb3/igt@device_reset@unbind-reset-rebind.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-iclb4/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][37] ([i915#1037] / [i915#198]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl5/igt@gem_eio@in-flight-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl3/igt@gem_eio@in-flight-suspend.html

  * {igt@kms_async_flips@test-time-stamp}:
    - shard-tglb:         [FAIL][39] ([i915#2597]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-tglb7/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [FAIL][41] ([i915#54]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][43] ([i915#96]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][45] ([i915#2346]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-tglb:         [FAIL][47] ([i915#2346]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-kbl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-kbl4/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-kbl4/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-apl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-apl7/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
    - shard-glk:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:
    - shard-skl:          [FAIL][55] ([i915#2122]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][57] ([i915#2598]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][59] ([i915#2055]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +25 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl5/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl3/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-skl:          [FAIL][65] ([i915#49]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][67] ([i915#1188]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][69] ([i915#198]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][75] ([i915#1542]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl7/igt@perf@polling-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl9/igt@perf@polling-parameterized.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [INCOMPLETE][77] ([i915#409]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb1/igt@prime_vgem@sync@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-iclb6/igt@prime_vgem@sync@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][79] ([i915#2684]) -> [WARN][80] ([i915#1804] / [i915#2684])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][81] -> [WARN][82] ([i915#1804])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [DMESG-FAIL][83] ([i915#1982]) -> [DMESG-WARN][84] ([i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl7/igt@kms_color@pipe-c-ctm-0-5.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl8/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][85] ([i915#1982]) -> [FAIL][86] ([i915#2122])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [DMESG-WARN][87] ([i915#1982]) -> [FAIL][88] ([fdo#108145] / [i915#265])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][90] ([fdo#108145] / [i915#1982])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-apl:          [INCOMPLETE][91] ([i915#2635]) -> [DMESG-WARN][92] ([i915#2635])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][93] ([i915#2295]) -> [FAIL][94] ([i915#2295] / [i915#483])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-hsw4/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-hsw1/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][95], [FAIL][96]) ([i915#1814] / [i915#2295] / [i915#602]) -> [FAIL][97] ([i915#2295] / [i915#483])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-kbl7/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-kbl7/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][98], [FAIL][99], [FAIL][100]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#409] / [i915#483]) -> ([FAIL][101], [FAIL][102]) ([i915#1814] / [i915#2295] / [i915#483])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb8/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb1/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb6/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-iclb6/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-iclb5/igt@runner@aborted.html
    - shard-skl:          [FAIL][103] ([i915#2295] / [i915#483]) -> [FAIL][104] ([i915#2295])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl5/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl6/igt@runner@aborted.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [DMESG-WARN][105] ([i915#1982]) -> [FAIL][106] ([i915#1731])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-skl10/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2635]: https://gitlab.freedesktop.org/drm/intel/issues/2635
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9394 -> Patchwork_18989

  CI-20190529: 20190529
  CI_DRM_9394: 1c4f359416d7422f56914d6a8edb5272e3385c0e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5871: ff519fd84618558c550bec07e7cc4b2c682f86ff @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18989: 7a2445d258b42ad705d46d3b93239a237eecb0f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/index.html

--===============1731709674200214329==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/5] drm/i915/gt: D=
ecouple completed requests on unwind</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84301/">https://patchwork.freedesktop.org/series/84301/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18989/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18989/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9394_full -&gt; Patchwork_18989_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18989_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18989_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18989_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@syncobj_timeline@wait-all-snapshot:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl4/igt@syncobj_timeline@wait-all-snapshot.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1898=
9/shard-skl2/igt@syncobj_timeline@wait-all-snapshot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9394_full and Patchwork_18=
989_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18989_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-snb2/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-snb2/igt@gem_ei=
o@kms.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-glk9/igt@gem_exec_whisper@basic-queues-all.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989=
/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18989/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-hsw2/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18989/shard-hsw1/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/96">i91=
5#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18989/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-glk5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset@ab-hdmi=
-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18989/shard-glk2/igt@kms_flip@2x-flip-vs-dpms-off-vs-mo=
deset@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptibl=
e@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18989/shard-glk4/igt@kms_flip@2x-flip-vs-expir=
ed-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-tglb6/igt@kms_flip@absolute-wf_vblank-interruptible@a-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18989/shard-tglb8/igt@kms_flip@absolute-wf_vblank-interruptible@=
a-edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18989/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-badstride.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18989/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-badstride.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i91=
5#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl9/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl7/igt=
@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18989/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/53">i915#=
53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18989/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-256:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-apl6/igt@kms_plane_cursor@pipe-a-primary-size-256.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18989/shard-apl7/igt@kms_plane_cursor@pipe-a-primary-size-256.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/sha=
rd-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-apl8/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-apl2=
/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-iclb3/igt@device_reset@unbind-reset-rebind.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18989/shard-iclb4/igt@device_reset@unbind-reset-rebind.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl5/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915=
#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18989/shard-skl3/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@test-time-stamp}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18989/shard-tglb7/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18989/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">=
PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/96">i915#96</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18989/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-at=
omic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18989/shard-skl10/igt@kms_cursor_legacy@fli=
p-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/23=
46">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18989/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-crc-atom=
ic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-kbl4/igt@kms_cursor_legacy@short-flip-before-cursor-atom=
ic-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18989/shard-kbl4/igt@kms_cursor_legacy@s=
hort-flip-before-cursor-atomic-transitions.html">PASS</a> +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18989/shard-apl7/igt@kms_draw_crc@draw-method-rgb565-blt-u=
ntiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18989/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-pwr=
ite-ytiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122=
">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18989/shard-skl4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18989/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a=
1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2055">i915#2055</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18989/shard-hsw2/igt@kms_flip@flip-vs-suspend-interru=
ptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl5/igt@kms_flip@flip-vs-suspend@a-edp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i91=
5#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18989/shard-skl3/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a> +2=
5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb=
-msflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18989/shard-tglb2/igt@kms_frontbuffer_track=
ing@psr-1p-primscrn-indfb-msflip-blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18989/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw=
-blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/=
shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-c-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18989/shard-skl10/igt@kms_plane@plane-panning=
-bottom-right-suspend-pipe-c-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18989/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage=
-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/=
shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl7/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/=
shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-iclb1/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/s=
hard-iclb6/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18989/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/s=
hard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl7/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
989/shard-skl8/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18989/shard-skl5/igt@kms_flip@plain-flip-fb-recr=
eate-interruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18989/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-cons=
tant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18989/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.h=
tml">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2635">i915#2635</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18989/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-=
dpms-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2635">i915#2635</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9394/shard-hsw4/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-hsw1/ig=
t@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/602">i915#602</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18989/shard-kbl4/igt@runner@aborted.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#=
2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">=
i915#483</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9394/shard-iclb1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9394/shard-iclb6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#4=
83</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18989/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-iclb5/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9394/shard-skl5/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18989/shard-skl=
6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9394/shard-skl10/igt@sysfs_heartbeat_interval@mixed@rcs0.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982=
">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18989/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i9=
15#1731</a>)</li>
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
<li>Linux: CI_DRM_9394 -&gt; Patchwork_18989</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9394: 1c4f359416d7422f56914d6a8edb5272e3385c0e @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5871: ff519fd84618558c550bec07e7cc4b2c682f86ff @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18989: 7a2445d258b42ad705d46d3b93239a237eecb0f8 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1731709674200214329==--

--===============1546866211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1546866211==--
