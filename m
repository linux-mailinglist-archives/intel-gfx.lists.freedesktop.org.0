Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BB429F9F4
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 01:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BAB6E93B;
	Fri, 30 Oct 2020 00:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC4656E93A;
 Fri, 30 Oct 2020 00:47:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3CDEA0BA8;
 Fri, 30 Oct 2020 00:47:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 30 Oct 2020 00:47:30 -0000
Message-ID: <160401885063.23389.12620229164551803263@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201029213042.11672-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201029213042.11672-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Quieten_=5Bzero=5D_EDID_carping?=
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
Content-Type: multipart/mixed; boundary="===============1531597777=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1531597777==
Content-Type: multipart/alternative;
 boundary="===============5057463890977449760=="

--===============5057463890977449760==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Quieten [zero] EDID carping
URL   : https://patchwork.freedesktop.org/series/83218/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9221_full -> Patchwork_18810_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18810_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18810_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18810_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@contexts@bcs0:
    - shard-snb:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-snb5/igt@gem_exec_parallel@contexts@bcs0.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uint-int (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][2] +7 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uint-int.html

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-mult-float-vec2 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-mult-float-vec2.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9221_full and Patchwork_18810_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 174 pass(s)
    - Exec time: [0.0] s

  


### New Piglit tests (10) ###

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-clamp-vec4-float-float:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uint-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-abs-neg-ivec3-ivec3:
    - Statuses : 1 crash(s)
    - Exec time: [0.46] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-uvec3-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitor-neg-ivec2-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-neg-abs-ivec2-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-div-vec2-vec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-mult-float-vec2:
    - Statuses : 1 crash(s)
    - Exec time: [0.57] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-sub-mat2-float:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-step-float-vec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18810_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][4] -> [DMESG-WARN][5] ([i915#1436] / [i915#716])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#54]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#72])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-glk:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982]) +5 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2122])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-glk3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-glk6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][14] -> [DMESG-FAIL][15] ([i915#1982] / [i915#79])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl10/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl6/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#2122]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-dp1:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate@a-dp1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1635] / [i915#1982]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-apl7/igt@kms_plane_lowres@pipe-b-tiling-y.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-apl7/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-iclb1/igt@kms_psr@psr2_sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-snb:          [INCOMPLETE][30] ([i915#82]) -> [PASS][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-snb2/igt@core_hotunplug@hotrebind-lateclose.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@core_hotunplug@unbind-rebind:
    - shard-tglb:         [DMESG-WARN][32] ([i915#1982]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-tglb7/igt@core_hotunplug@unbind-rebind.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-tglb3/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][34] ([i915#541]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl6/igt@i915_selftest@live@gt_heartbeat.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl3/igt@i915_selftest@live@gt_heartbeat.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][36] ([i915#2521]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][38] ([i915#54]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][40] ([i915#300]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
    - shard-apl:          [DMESG-WARN][42] ([i915#1635] / [i915#1982]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-apl4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html

  * igt@kms_flip@2x-flip-vs-panning@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][44] ([i915#1982]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-glk2/igt@kms_flip@2x-flip-vs-panning@ab-hdmi-a1-hdmi-a2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-glk4/igt@kms_flip@2x-flip-vs-panning@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][46] ([i915#180]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][48] ([i915#198]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][50] ([i915#2122]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          [DMESG-WARN][52] ([i915#1982]) -> [PASS][53] +5 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][54] ([i915#1188]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][56] ([fdo#109441]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-iclb7/igt@kms_psr@psr2_dpms.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@crtc-id:
    - shard-kbl:          [DMESG-WARN][58] ([i915#1982]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl6/igt@kms_vblank@crtc-id.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl4/igt@kms_vblank@crtc-id.html

  
#### Warnings ####

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [DMESG-FAIL][60] ([i915#1982]) -> [DMESG-WARN][61] ([i915#1982])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9221 -> Patchwork_18810

  CI-20190529: 20190529
  CI_DRM_9221: d1859ff72eefa224fe11a5c3e8e1eef567d6ec93 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5828: db972bdaab8ada43b742bc9621bb0fc9d56a6fc6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18810: aeea4d2e77689d86306b24ef4b1353fa2b1e19fe @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/index.html

--===============5057463890977449760==
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
<tr><td><b>Series:</b></td><td>drm: Quieten [zero] EDID carping</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83218/">https://patchwork.freedesktop.org/series/83218/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9221_full -&gt; Patchwork_18810_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18810_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18810_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18810_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_parallel@contexts@bcs0:<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-snb5/igt@gem_exec_parallel@contexts@bcs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uint-int (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uint-int.html">INCOMPLETE</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-mult-float-vec2 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-mult-float-vec2.html">CRASH</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9221_full and Patchwork_18810_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 174 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New Piglit tests (10)</h3>
<ul>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-clamp-vec4-float-float:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uint-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-abs-neg-ivec3-ivec3:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.46] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-uvec3-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitor-neg-ivec2-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-neg-abs-ivec2-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-div-vec2-vec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-mult-float-vec2:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.57] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-sub-mat2-float:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-step-float-vec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18810_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-glk3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-glk6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl10/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl6/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-apl7/igt@kms_plane_lowres@pipe-b-tiling-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-apl7/igt@kms_plane_lowres@pipe-b-tiling-y.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-iclb1/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-snb2/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-tglb7/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-tglb3/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl3/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-apl4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-glk2/igt@kms_flip@2x-flip-vs-panning@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-glk4/igt@kms_flip@2x-flip-vs-panning@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-iclb7/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@crtc-id:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-kbl6/igt@kms_vblank@crtc-id.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-kbl4/igt@kms_vblank@crtc-id.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@plain-flip-fb-recreate@a-edp1:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18810/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9221 -&gt; Patchwork_18810</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9221: d1859ff72eefa224fe11a5c3e8e1eef567d6ec93 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5828: db972bdaab8ada43b742bc9621bb0fc9d56a6fc6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18810: aeea4d2e77689d86306b24ef4b1353fa2b1e19fe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5057463890977449760==--

--===============1531597777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1531597777==--
