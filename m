Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DDF21C3A2
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2020 12:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F666E196;
	Sat, 11 Jul 2020 10:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 728DF6E196;
 Sat, 11 Jul 2020 10:17:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C116A47EA;
 Sat, 11 Jul 2020 10:17:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 11 Jul 2020 10:17:51 -0000
Message-ID: <159446267141.9235.11532957789944017692@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200710203408.23039-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200710203408.23039-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Recalculate_FBC_w/a_stride_when_needed_=28rev2=29?=
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

Series: drm/i915: Recalculate FBC w/a stride when needed (rev2)
URL   : https://patchwork.freedesktop.org/series/79368/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8732_full -> Patchwork_18139_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18139_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18139_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18139_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb8/igt@i915_pm_rps@waitboost.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-tglb7/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_legacy@all-pipes-forked-move:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb7/igt@kms_cursor_legacy@all-pipes-forked-move.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-tglb7/igt@kms_cursor_legacy@all-pipes-forked-move.html

  
Known issues
------------

  Here are the changes found in Patchwork_18139_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1958] / [i915#2119])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb8/igt@gem_exec_endless@dispatch@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-tglb7/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fence@parallel@vecs0:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk5/igt@gem_exec_fence@parallel@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-glk2/igt@gem_exec_fence@parallel@vecs0.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#402])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb3/igt@gem_exec_reloc@basic-cpu-gtt-active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-tglb5/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl7/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl10/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [PASS][13] -> [TIMEOUT][14] ([i915#1958] / [i915#2119]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_userptr_blits@dmabuf-sync.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-snb2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#198] / [i915#2110])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl4/igt@i915_selftest@mock@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl10/igt@i915_selftest@mock@requests.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl5/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-hsw1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-hsw6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#123] / [i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-b-ts-continuation-idle:
    - shard-tglb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb1/igt@kms_vblank@pipe-b-ts-continuation-idle.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-tglb2/igt@kms_vblank@pipe-b-ts-continuation-idle.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#1635] / [i915#1755])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-tglb:         [DMESG-WARN][39] ([i915#402]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb7/igt@gem_fence_thrash@bo-copy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-tglb1/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-kbl:          [DMESG-WARN][41] ([i915#93] / [i915#95]) -> [PASS][42] +35 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl4/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-kbl4/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][43] ([i915#118] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +9 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl7/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-apl:          [DMESG-FAIL][47] ([i915#1635] / [i915#54] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-kbl:          [DMESG-FAIL][49] ([i915#54] / [i915#95]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-glk:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [DMESG-WARN][53] ([i915#1635] / [i915#95]) -> [PASS][54] +28 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-apl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-b-single-move:
    - shard-snb:          [INCOMPLETE][55] ([i915#82]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb1/igt@kms_cursor_legacy@pipe-b-single-move.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-snb1/igt@kms_cursor_legacy@pipe-b-single-move.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-kbl:          [FAIL][57] ([i915#64]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl7/igt@kms_fbcon_fbt@fbc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-kbl3/igt@kms_fbcon_fbt@fbc.html
    - shard-apl:          [FAIL][59] ([i915#1525] / [i915#1635]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl4/igt@kms_fbcon_fbt@fbc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-apl7/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][61] ([i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@d-edp1:
    - shard-tglb:         [INCOMPLETE][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@d-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@d-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][67] ([i915#1188]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-iclb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb3/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-iclb7/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-kbl:          [DMESG-FAIL][71] ([fdo#108145] / [i915#95]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
    - shard-apl:          [DMESG-FAIL][73] ([fdo#108145] / [i915#1635] / [i915#95]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#265]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - shard-apl:          [DMESG-FAIL][77] ([i915#1635] / [i915#95]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl2/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-apl4/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
    - shard-kbl:          [DMESG-FAIL][79] ([i915#95]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl3/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-kbl6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-iclb:         [FAIL][83] ([i915#1755]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb5/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-iclb8/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@file:
    - shard-snb:          [SKIP][85] ([fdo#109271] / [i915#1099]) -> [TIMEOUT][86] ([i915#1958] / [i915#2119])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_ctx_persistence@file.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-snb2/igt@gem_ctx_persistence@file.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][87] ([i915#1930]) -> [TIMEOUT][88] ([i915#1958] / [i915#2119])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-snb:          [SKIP][89] ([fdo#109271]) -> [TIMEOUT][90] ([i915#1958] / [i915#2119])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-snb2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][91] ([i915#588]) -> [SKIP][92] ([i915#658])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [DMESG-FAIL][93] ([i915#1982]) -> [FAIL][94] ([i915#454])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][95] ([i915#1319] / [i915#2119]) -> [TIMEOUT][96] ([i915#1319] / [i915#1958] / [i915#2119])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl6/igt@kms_content_protection@atomic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [DMESG-FAIL][97] ([fdo#110321] / [i915#1635] / [i915#95]) -> [FAIL][98] ([fdo#110321] / [i915#1635])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl2/igt@kms_content_protection@srm.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-apl4/igt@kms_content_protection@srm.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][99] ([i915#1226]) -> [SKIP][100] ([fdo#109349])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8732 -> Patchwork_18139

  CI-20190529: 20190529
  CI_DRM_8732: 4c05e94181f1a8ea4c91a5bd90e81f3275b51332 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5732: 8a50ca9985d2dbb0293186c3286af46468fb4b84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18139: 4920b87c4fb3249ff39d8e1d6d733beb4bdc8261 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18139/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
