Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B4B305734
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 10:45:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7793F89C05;
	Wed, 27 Jan 2021 09:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E78C589B06;
 Wed, 27 Jan 2021 09:45:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCC11A0BCB;
 Wed, 27 Jan 2021 09:45:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Wed, 27 Jan 2021 09:45:21 -0000
Message-ID: <161174072186.11912.12340699438614493157@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210127041159.136409-1-aditya.swarup@intel.com>
In-Reply-To: <20210127041159.136409-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRmlu?=
 =?utf-8?q?al_set_of_patches_for_ADLS_enabling?=
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
Content-Type: multipart/mixed; boundary="===============1911542451=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1911542451==
Content-Type: multipart/alternative;
 boundary="===============6141000729631261444=="

--===============6141000729631261444==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Final set of patches for ADLS enabling
URL   : https://patchwork.freedesktop.org/series/86322/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9686_full -> Patchwork_19512_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19512_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19512_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19512_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl9/igt@i915_selftest@live@mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_19512_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][2] -> [FAIL][3] ([i915#2842]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#2842]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_mmap_gtt@hang:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk6/igt@gem_mmap_gtt@hang.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk7/igt@gem_mmap_gtt@hang.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-glk:          NOTRUN -> [SKIP][13] ([fdo#109271]) +12 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk5/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#454])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][16] ([i915#1886] / [i915#2291])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl9/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-kbl6/igt@i915_suspend@forcewake.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#2597])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-tglb5/igt@kms_async_flips@test-time-stamp.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb2/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109284] / [fdo#111827])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb5/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk7/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271]) +45 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-random:
    - shard-skl:          NOTRUN -> [FAIL][27] ([i915#54]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#533])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#2598]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#79])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#2122]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-glk:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#2642])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109280])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#1188])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][39] ([i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145] / [i915#265])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][42] ([fdo#108145] / [i915#265])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#658]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@prime_vgem@sync@vcs1:
    - shard-tglb:         [PASS][46] -> [INCOMPLETE][47] ([i915#409])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-tglb8/igt@prime_vgem@sync@vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb8/igt@prime_vgem@sync@vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [FAIL][48] ([i915#2842]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html
    - shard-apl:          [FAIL][50] ([i915#2842]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][52] ([i915#2849]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-glk:          [DMESG-WARN][54] -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk6/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk7/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][56] ([i915#1436] / [i915#716]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][58] ([i915#1436] / [i915#716]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [FAIL][60] ([i915#54]) -> [PASS][61] +7 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][62] ([i915#2346]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@blocking-absolute-wf_vblank@a-edp1:
    - shard-skl:          [DMESG-WARN][64] ([i915#1982]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl2/igt@kms_flip@blocking-absolute-wf_vblank@a-edp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl8/igt@kms_flip@blocking-absolute-wf_vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
    - shard-skl:          [FAIL][66] ([i915#49]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][68] ([i915#1188]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][70] ([fdo#108145] / [i915#265]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][74] ([i915#51]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl4/igt@perf@short-reads.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl10/igt@perf@short-reads.html

  * {igt@sysfs_clients@pidname}:
    - shard-glk:          [FAIL][76] -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk4/igt@sysfs_clients@pidname.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk9/igt@sysfs_clients@pidname.html

  * {igt@sysfs_clients@sema-10@rcs0}:
    - shard-kbl:          [SKIP][78] ([fdo#109271]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-kbl1/igt@sysfs_clients@sema-10@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl2/igt@sysfs_clients@sema-10@rcs0.html

  * {igt@sysfs_clients@split-10@vcs0}:
    - shard-skl:          [SKIP][80] ([fdo#109271]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl7/igt@sysfs_clients@split-10@vcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl1/igt@sysfs_clients@split-10@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][82] ([i915#2681] / [i915#2684]) -> [WARN][83] ([i915#1804] / [i915#2684])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][84], [FAIL][85], [FAIL][86]) ([i915#2295] / [i915#2505]) -> ([FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90]) ([i915#2295])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-kbl4/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-kbl6/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-kbl1/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl1/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl4/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94]) ([i915#2295] / [i915#2426] / [i915#2724]) -> ([FAIL][95], [FAIL][96], [FAIL][97]) ([i915#2295] / [i915#2724])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb5/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb5/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb3/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb4/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb4/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb8/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb8/igt@runner@aborted.html
    - shard-glk:          ([FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102]) ([i915#2295] / [i915#2426] / [k.org#202321]) -> ([FAIL][103], [FAIL][104], [FAIL][105]) ([i915#2295] / [k.org#202321])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk6/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk5/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk1/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk2/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk9/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk2/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk8/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk3/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][106], [FAIL][107], [FAIL][108]) ([i915#2295] / [i915#2667]) -> ([FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#409])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-tglb1/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-tglb8/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-tglb2/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb8/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb1/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb5/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116]) ([i915#1436] / [i915#2295]) -> ([FAIL][117], [FAIL][118], [FAIL][119]) ([i915#2295])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl4/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl9/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl8/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl6/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl5/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl9/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2642]: https://gitlab.freedesktop.org/drm/intel/issues/2642
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9686 -> Patchwork_19512

  CI-20190529: 20190529
  CI_DRM_9686: 8de0436dc0e777bbd5490d56134a838da4c19121 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5973: 7ae3d0d68e6bf4c5e404c87b570773d1b3173d47 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19512: 11dca653436d8211406641e04a27f8a828d10391 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/index.html

--===============6141000729631261444==
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
<tr><td><b>Series:</b></td><td>Final set of patches for ADLS enabling</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86322/">https://patchwork.freedesktop.org/series/86322/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19512/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19512/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9686_full -&gt; Patchwork_19512_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19512_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19512_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19512_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@mman:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-skl9/igt@i915_selftest@live@mman.html">=
INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19512_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
512/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1951=
2/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/sh=
ard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/sh=
ard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-glk6/igt@gem_mmap_gtt@hang.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk7/igt=
@gem_mmap_gtt@hang.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/118">i915#118</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-glk5/igt@gem_render_copy@y-tiled-to-veb=
ox-x-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb4/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-skl9/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1886">i915#1886</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-kbl6/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl1=
/igt@i915_suspend@forcewake.html">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/=
shard-tglb2/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-iclb5/igt@kms_chamelium@hdmi-cmp-planar=
-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-glk7/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_color@pipe-d-ctm-max.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_color_chamelium@pipe-a-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19512/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i9=
15#54</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-1=
28x42-random.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19512/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19512/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#=
79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19512/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2642">i915#2642</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-=
skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19512/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-skl3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/sha=
rd-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-tglb8/igt@prime_vgem@sync@vcs1.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb8=
/igt@prime_vgem@sync@vcs1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/409">i915#409</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9686/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
12/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9686/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
12/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2=
849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19512/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-glk6/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19512/shard-glk7/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-glk9/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#14=
36</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i9=
15#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19512/shard-glk5/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19512/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i915#5=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19512/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> +7=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i=
915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19512/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl2/igt@kms_flip@blocking-absolute-wf_vblank@a-edp1.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19512/shard-skl8/igt@kms_flip@blocking-absolute-wf_vblank@=
a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-in=
dfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19512/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p=
-offscren-pri-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/sha=
rd-skl8/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19512/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9512/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl4/igt@perf@short-reads.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl10/ig=
t@perf@short-reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@pidname}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-glk4/igt@sysfs_clients@pidname.html">FAIL</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-glk9/=
igt@sysfs_clients@pidname.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-10@rcs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-kbl1/igt@sysfs_clients@sema-10@rcs0.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1951=
2/shard-kbl2/igt@sysfs_clients@sema-10@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@split-10@vcs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl7/igt@sysfs_clients@split-10@vcs0.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
12/shard-skl1/igt@sysfs_clients@split-10@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19512/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#=
2684</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9686/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>) -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-kbl=
1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19512/shard-kbl1/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-=
kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19512/shard-kbl4/igt@runner@aborted.html">FAIL</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#=
2295</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb5/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9686/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-iclb4/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2724">i915#2724</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19512/shard-iclb4/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512=
/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19512/shard-iclb8/igt@runner@aborted.htm=
l">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/22=
95">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2724">i915#2724</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk5/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9686/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-glk2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_96=
86/shard-glk9/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"ht=
tps://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard=
-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19512/shard-glk8/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/sh=
ard-glk3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://bugzi=
lla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9686/shard-tglb2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-=
tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19512/shard-tglb1/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/s=
hard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19512/shard-tglb3/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295=
">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2667">i915#2667</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9686/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl9/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9686/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/shard-skl6/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19512/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19512/shard-skl9=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19512/shard-skl6/igt@runner@aborted.html">FAIL</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295=
</a>)</p>
</li>
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
<li>Linux: CI_DRM_9686 -&gt; Patchwork_19512</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9686: 8de0436dc0e777bbd5490d56134a838da4c19121 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5973: 7ae3d0d68e6bf4c5e404c87b570773d1b3173d47 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19512: 11dca653436d8211406641e04a27f8a828d10391 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6141000729631261444==--

--===============1911542451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1911542451==--
