Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5C02A7464
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 02:05:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E166E86C;
	Thu,  5 Nov 2020 01:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C95436E86C;
 Thu,  5 Nov 2020 01:05:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B891EA8831;
 Thu,  5 Nov 2020 01:05:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Thu, 05 Nov 2020 01:05:36 -0000
Message-ID: <160453833674.14957.16640675640988820099@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201104195604.3334-1-uma.shankar@intel.com>
In-Reply-To: <20201104195604.3334-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmUt?=
 =?utf-8?q?enable_FBC_on_TGL?=
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
Content-Type: multipart/mixed; boundary="===============1860958702=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1860958702==
Content-Type: multipart/alternative;
 boundary="===============5223086836022357636=="

--===============5223086836022357636==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Re-enable FBC on TGL
URL   : https://patchwork.freedesktop.org/series/83510/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9265_full -> Patchwork_18857_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18857_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18857_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18857_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw8/igt@gem_exec_flush@basic-uc-pro-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw2/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][5] -> [SKIP][6] +65 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][7] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-glk:          [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-hsw:          [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [DMESG-WARN][12] ([i915#2411]) -> [SKIP][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9265_full and Patchwork_18857_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 198 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18857_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-snb:          [PASS][14] -> [INCOMPLETE][15] ([i915#82])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-snb4/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@drm_read@short-buffer-wakeup:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1635] / [i915#1982]) +7 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl7/igt@drm_read@short-buffer-wakeup.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl7/igt@drm_read@short-buffer-wakeup.html

  * igt@gem_blits@basic:
    - shard-skl:          [PASS][18] -> [TIMEOUT][19] ([i915#2502])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@gem_blits@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@gem_blits@basic.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +42 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][22] -> [WARN][23] ([i915#1519])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw8/igt@i915_pm_rc6_residency@rc6-fence.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-a:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#118] / [i915#95])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk6/igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-a.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-a.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-kbl:          [PASS][26] -> [FAIL][27] ([i915#129])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl7/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl2/igt@kms_color@pipe-c-ctm-blue-to-red.html
    - shard-apl:          [PASS][28] -> [FAIL][29] ([i915#129] / [i915#1635])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl3/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl2/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#54]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [PASS][32] -> [SKIP][33] ([fdo#109271]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-tglb:         [PASS][34] -> [FAIL][35] ([i915#64])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb5/igt@kms_fbcon_fbt@fbc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb5/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][36] -> [DMESG-WARN][37] ([i915#1982]) +8 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk9/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-hdmi-a1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk3/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#2122]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-snb:          [PASS][40] -> [FAIL][41] ([i915#2546])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#49])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-iclb:         [PASS][44] -> [DMESG-WARN][45] ([i915#1982])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][46] -> [DMESG-WARN][47] ([i915#1982]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [PASS][48] -> [INCOMPLETE][49] ([i915#1185] / [i915#250])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([fdo#108145] / [i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][52] -> [DMESG-FAIL][53] ([fdo#108145] / [i915#1982])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb4/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_sequence@get-forked-busy:
    - shard-hsw:          [PASS][56] -> [DMESG-WARN][57] ([i915#1982])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw7/igt@kms_sequence@get-forked-busy.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw2/igt@kms_sequence@get-forked-busy.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-skl:          [PASS][58] -> [WARN][59] ([i915#2100])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl6/igt@kms_setmode@basic-clone-single-crtc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][60] -> [INCOMPLETE][61] ([i915#155])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-apl:          [PASS][62] -> [INCOMPLETE][63] ([i915#1635])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-iclb:         [PASS][64] -> [INCOMPLETE][65] ([i915#1078] / [i915#1185])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-kbl:          [PASS][66] -> [DMESG-WARN][67] ([i915#1982]) +5 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl4/igt@kms_vblank@pipe-c-accuracy-idle.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl3/igt@kms_vblank@pipe-c-accuracy-idle.html

  * igt@perf@create-destroy-userspace-config:
    - shard-glk:          [PASS][68] -> [SKIP][69] ([fdo#109271] / [i915#1354]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk9/igt@perf@create-destroy-userspace-config.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk7/igt@perf@create-destroy-userspace-config.html
    - shard-apl:          [PASS][70] -> [SKIP][71] ([fdo#109271] / [i915#1354] / [i915#1635]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl2/igt@perf@create-destroy-userspace-config.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl6/igt@perf@create-destroy-userspace-config.html
    - shard-skl:          [PASS][72] -> [SKIP][73] ([fdo#109271] / [i915#1354])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl10/igt@perf@create-destroy-userspace-config.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@perf@create-destroy-userspace-config.html

  * igt@perf@polling-small-buf:
    - shard-tglb:         [PASS][74] -> [SKIP][75] ([i915#1354]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb2/igt@perf@polling-small-buf.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb7/igt@perf@polling-small-buf.html
    - shard-kbl:          [PASS][76] -> [SKIP][77] ([fdo#109271] / [i915#1354]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl6/igt@perf@polling-small-buf.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl6/igt@perf@polling-small-buf.html
    - shard-hsw:          [PASS][78] -> [SKIP][79] ([fdo#109271]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw7/igt@perf@polling-small-buf.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw2/igt@perf@polling-small-buf.html
    - shard-iclb:         [PASS][80] -> [SKIP][81] ([i915#1354]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb2/igt@perf@polling-small-buf.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb5/igt@perf@polling-small-buf.html

  * igt@sysfs_timeslice_duration@timeout@bcs0:
    - shard-skl:          [PASS][82] -> [FAIL][83] ([i915#1732])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@sysfs_timeslice_duration@timeout@bcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@sysfs_timeslice_duration@timeout@bcs0.html

  * igt@sysfs_timeslice_duration@timeout@rcs0:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#1755])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@sysfs_timeslice_duration@timeout@rcs0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-iclb:         [PASS][86] -> [FAIL][87] ([i915#1755])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb3/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb5/igt@sysfs_timeslice_duration@timeout@vecs0.html
    - shard-apl:          [PASS][88] -> [FAIL][89] ([i915#1635] / [i915#1755])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl6/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl8/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * {igt@core_hotunplug@hotrebind}:
    - shard-iclb:         [DMESG-WARN][90] ([i915#1982]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb1/igt@core_hotunplug@hotrebind.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb1/igt@core_hotunplug@hotrebind.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [DMESG-WARN][92] ([i915#118] / [i915#95]) -> [PASS][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk6/igt@gem_exec_whisper@basic-fds-priority.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk7/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-hsw:          [FAIL][94] -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw7/igt@gem_exec_whisper@basic-normal-all.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw7/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-iclb:         [FAIL][96] -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb8/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb3/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt:
    - shard-hsw:          [FAIL][98] ([i915#1888]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@wb:
    - shard-snb:          [INCOMPLETE][100] ([i915#82]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@wb.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@wb.html

  * igt@i915_suspend@forcewake:
    - shard-iclb:         [INCOMPLETE][102] ([i915#1185]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb3/igt@i915_suspend@forcewake.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb6/igt@i915_suspend@forcewake.html
    - shard-kbl:          [INCOMPLETE][104] ([i915#155] / [i915#636]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl7/igt@i915_suspend@forcewake.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl4/igt@i915_suspend@forcewake.html
    - shard-hsw:          [INCOMPLETE][106] ([i915#2055]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw8/igt@i915_suspend@forcewake.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw4/igt@i915_suspend@forcewake.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][108] ([i915#2521]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-tglb:         [FAIL][110] ([i915#2521]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb8/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb1/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [SKIP][112] ([fdo#109271]) -> [PASS][113] +19 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][114] ([i915#54]) -> [PASS][115] +6 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-tglb:         [FAIL][116] ([i915#2346]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled:
    - shard-iclb:         [FAIL][118] ([i915#52] / [i915#54]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][120] ([i915#1982]) -> [PASS][121] +6 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk6/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk4/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][122] ([i915#79]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [INCOMPLETE][124] ([i915#198]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][126] ([i915#2122]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-apl:          [DMESG-WARN][128] ([i915#1635] / [i915#1982]) -> [PASS][129] +3 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
    - shard-kbl:          [DMESG-WARN][130] ([i915#1982]) -> [PASS][131] +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
    - shard-tglb:         [DMESG-WARN][132] ([i915#1982]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [FAIL][134] ([i915#2546]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:
    - shard-glk:          [FAIL][136] ([i915#49]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-iclb:         [FAIL][138] ([i915#49]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][140] ([i915#1188]) -> [PASS][141] +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:
    - shard-glk:          [FAIL][142] ([i915#53]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:
    - shard-skl:          [FAIL][144] ([i915#53]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-glk:          [INCOMPLETE][146] -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
    - shard-apl:          [INCOMPLETE][148] ([i915#1635]) -> [PASS][149] +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
    - shard-kbl:          [INCOMPLETE][150] ([i915#155]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
    - shard-hsw:          [INCOMPLETE][152] -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][154] ([fdo#109441]) -> [PASS][155] +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb3/igt@kms_psr@psr2_dpms.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@sprite_mmap_gtt:
    - shard-skl:          [CRASH][156] ([i915#2212]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/index.html

--===============5223086836022357636==
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
<tr><td><b>Series:</b></td><td>Re-enable FBC on TGL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83510/">https://patchwork.freedesktop.org/series/83510/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9265_full -&gt; Patchwork_18857_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18857_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18857_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18857_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw8/igt@gem_exec_flush@basic-uc-pro-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw2/igt@gem_exec_flush@basic-uc-pro-default.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbcpsr-suspend:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">DMESG-WARN</a> ([i915#2411]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9265_full and Patchwork_18857_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 198 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18857_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-snb4/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a> ([i915#82])</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-wakeup:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl7/igt@drm_read@short-buffer-wakeup.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl7/igt@drm_read@short-buffer-wakeup.html">DMESG-WARN</a> ([i915#1635] / [i915#1982]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@gem_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@gem_blits@basic.html">TIMEOUT</a> ([i915#2502])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">DMESG-WARN</a> ([i915#1982]) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw8/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1519])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk6/igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-a.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl7/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl2/igt@kms_color@pipe-c-ctm-blue-to-red.html">FAIL</a> ([i915#129])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl3/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl2/igt@kms_color@pipe-c-ctm-blue-to-red.html">FAIL</a> ([i915#129] / [i915#1635])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">FAIL</a> ([i915#54]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html">SKIP</a> ([fdo#109271]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb5/igt@kms_fbcon_fbt@fbc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb5/igt@kms_fbcon_fbt@fbc.html">FAIL</a> ([i915#64])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk9/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk3/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-hdmi-a1.html">DMESG-WARN</a> ([i915#1982]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">DMESG-WARN</a> ([i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> ([i915#1185] / [i915#250])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> ([fdo#108145] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb4/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw7/igt@kms_sequence@get-forked-busy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw2/igt@kms_sequence@get-forked-busy.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl6/igt@kms_setmode@basic-clone-single-crtc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl7/igt@kms_setmode@basic-clone-single-crtc.html">WARN</a> ([i915#2100])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">INCOMPLETE</a> ([i915#155])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">INCOMPLETE</a> ([i915#1635])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">INCOMPLETE</a> ([i915#1078] / [i915#1185])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl4/igt@kms_vblank@pipe-c-accuracy-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl3/igt@kms_vblank@pipe-c-accuracy-idle.html">DMESG-WARN</a> ([i915#1982]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@create-destroy-userspace-config:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk9/igt@perf@create-destroy-userspace-config.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk7/igt@perf@create-destroy-userspace-config.html">SKIP</a> ([fdo#109271] / [i915#1354]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl2/igt@perf@create-destroy-userspace-config.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl6/igt@perf@create-destroy-userspace-config.html">SKIP</a> ([fdo#109271] / [i915#1354] / [i915#1635]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl10/igt@perf@create-destroy-userspace-config.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@perf@create-destroy-userspace-config.html">SKIP</a> ([fdo#109271] / [i915#1354])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb2/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb7/igt@perf@polling-small-buf.html">SKIP</a> ([i915#1354]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl6/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl6/igt@perf@polling-small-buf.html">SKIP</a> ([fdo#109271] / [i915#1354]) +1 similar issue</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw7/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw2/igt@perf@polling-small-buf.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb2/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb5/igt@perf@polling-small-buf.html">SKIP</a> ([i915#1354]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@sysfs_timeslice_duration@timeout@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@sysfs_timeslice_duration@timeout@bcs0.html">FAIL</a> ([i915#1732])</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@sysfs_timeslice_duration@timeout@rcs0.html">FAIL</a> ([i915#1755])</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb3/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb5/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> ([i915#1755])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl6/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl8/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> ([i915#1635] / [i915#1755])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@core_hotunplug@hotrebind}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb1/igt@core_hotunplug@hotrebind.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb1/igt@core_hotunplug@hotrebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk6/igt@gem_exec_whisper@basic-fds-priority.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk7/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw7/igt@gem_exec_whisper@basic-normal-all.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw7/igt@gem_exec_whisper@basic-normal-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb8/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb3/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html">FAIL</a> ([i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@wb:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@wb.html">INCOMPLETE</a> ([i915#82]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@wb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#1185]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb6/igt@i915_suspend@forcewake.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#155] / [i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl4/igt@i915_suspend@forcewake.html">PASS</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw8/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#2055]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw4/igt@i915_suspend@forcewake.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb8/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb1/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html">FAIL</a> ([i915#52] / [i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk6/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk4/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">DMESG-WARN</a> ([i915#1635] / [i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">PASS</a> +3 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">FAIL</a> ([i915#2546]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html">FAIL</a> ([i915#49]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">FAIL</a> ([i915#49]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html">FAIL</a> ([i915#53]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html">FAIL</a> ([i915#53]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-glk5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">INCOMPLETE</a> ([i915#1635]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">INCOMPLETE</a> ([i915#155]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-hsw4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-hsw4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265/shard-iclb3/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18857/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9265">CRASH</a> ([i915#2212]) -&gt; [PASS][157]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5223086836022357636==--

--===============1860958702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1860958702==--
