Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 522751FFE99
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 01:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F5A16EBCE;
	Thu, 18 Jun 2020 23:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15F746EBCE;
 Thu, 18 Jun 2020 23:28:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FE78A00E6;
 Thu, 18 Jun 2020 23:28:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 18 Jun 2020 23:28:09 -0000
Message-ID: <159252288903.22460.5464398107550245782@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200618150402.14022-1-jani.nikula@intel.com>
In-Reply-To: <20200618150402.14022-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/params=3A_switch_to_device_specific_parameters_=28rev3=29?=
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

Series: drm/i915/params: switch to device specific parameters (rev3)
URL   : https://patchwork.freedesktop.org/series/78004/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8641_full -> Patchwork_17993_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17993_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17993_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17993_full:

### IGT changes ###

#### Possible regressions ####

  * igt@sysfs_heartbeat_interval@nopreempt@bcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl4/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl3/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17993_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-kbl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-kbl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_schedule@implicit-boths@rcs0:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-snb5/igt@gem_exec_schedule@implicit-boths@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-snb4/igt@gem_exec_schedule@implicit-boths@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-kbl2/igt@gem_exec_whisper@basic-fds-priority-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-kbl2/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_mmap_gtt@medium-copy:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +11 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl7/igt@gem_mmap_gtt@medium-copy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl7/igt@gem_mmap_gtt@medium-copy.html

  * igt@gem_tiled_pread_pwrite:
    - shard-iclb:         [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-iclb3/igt@gem_tiled_pread_pwrite.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-iclb2/igt@gem_tiled_pread_pwrite.html

  * igt@kms_color@pipe-c-ctm-max:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#168])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl3/igt@kms_color@pipe-c-ctm-max.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl8/igt@kms_color@pipe-c-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#95]) +10 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#407])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-glk5/igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-glk6/igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#62]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-apl7/igt@kms_plane_cursor@pipe-c-primary-size-64.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-apl6/igt@kms_plane_cursor@pipe-c-primary-size-64.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-iclb6/igt@kms_psr@psr2_primary_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-apl1/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-apl3/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
    - shard-tglb:         [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-tglb5/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-tglb7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-glk7/igt@gem_exec_whisper@basic-contexts-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html

  * {igt@kms_atomic_transition@plane-all-transition@hdmi-a-1-pipe-a}:
    - shard-glk:          [INCOMPLETE][41] ([i915#58] / [k.org#198133]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-glk8/igt@kms_atomic_transition@plane-all-transition@hdmi-a-1-pipe-a.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-glk6/igt@kms_atomic_transition@plane-all-transition@hdmi-a-1-pipe-a.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-apl:          [FAIL][43] ([i915#54]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl10/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-apl:          [DMESG-WARN][49] ([i915#95]) -> [PASS][50] +13 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-apl6/igt@kms_flip_tiling@flip-x-tiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-apl8/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][59] ([i915#173]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-iclb1/igt@kms_psr@no_drrs.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@gem_eio@execbuf:
    - shard-apl:          [DMESG-WARN][63] ([i915#95]) -> [DMESG-WARN][64] ([i915#62])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-apl7/igt@gem_eio@execbuf.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-apl6/igt@gem_eio@execbuf.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66] ([i915#1899])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [DMESG-WARN][67] ([i915#93] / [i915#95]) -> [DMESG-WARN][68] ([i915#180] / [i915#93] / [i915#95])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-kbl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [DMESG-FAIL][69] ([i915#1982] / [i915#79]) -> [FAIL][70] ([i915#79])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][72] ([i915#93] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-apl:          [DMESG-WARN][73] ([i915#95]) -> [DMESG-FAIL][74] ([i915#62])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/shard-apl7/igt@kms_properties@crtc-properties-atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/shard-apl6/igt@kms_properties@crtc-properties-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#168]: https://gitlab.freedesktop.org/drm/intel/issues/168
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1899]: https://gitlab.freedesktop.org/drm/intel/issues/1899
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8641 -> Patchwork_17993

  CI-20190529: 20190529
  CI_DRM_8641: aac91f91c7be78f53b352237d968dfa1996b2d4b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5712: eba1135ddd35f9d3097ed91032aefe8f9a9f9d02 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17993: 7e653187560babd808318d160f9a3f8dcee515a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17993/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
