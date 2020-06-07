Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503501F1066
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 01:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383D76E217;
	Sun,  7 Jun 2020 23:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F7726E215;
 Sun,  7 Jun 2020 23:22:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 374F3A47DA;
 Sun,  7 Jun 2020 23:22:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sun, 07 Jun 2020 23:22:17 -0000
Message-ID: <159157213719.15989.9015253662299268978@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200607212522.16935-1-imre.deak@intel.com>
In-Reply-To: <20200607212522.16935-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/dp=5Fmst=3A_Fix_the_DDC_I2C_dev?=
 =?utf-8?q?ice_unregistration_of_an_MST_port?=
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

Series: series starting with [1/3] drm/dp_mst: Fix the DDC I2C device unregistration of an MST port
URL   : https://patchwork.freedesktop.org/series/78100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8597_full -> Patchwork_17901_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17901_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2] ([i915#58] / [i915#95] / [k.org#198133])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-glk5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_create@basic:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl2/igt@gem_exec_create@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-kbl6/igt@gem_exec_create@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk6/igt@gem_exec_whisper@basic-queues-priority.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@kms_concurrent@pipe-b:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +12 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl9/igt@kms_concurrent@pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl6/igt@kms_concurrent@pipe-b.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#300])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#95]) +19 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-apl7/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [PASS][23] -> [INCOMPLETE][24] ([i915#1185] / [i915#250])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [DMESG-WARN][29] ([i915#118] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk2/igt@gem_exec_whisper@basic-fds-forked-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-glk2/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-apl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][33] ([i915#118] / [i915#95]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-glk5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-skl:          [FAIL][37] ([i915#54]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-kbl:          [DMESG-WARN][39] ([i915#93] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl1/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-kbl7/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1}:
    - shard-skl:          [FAIL][41] ([i915#1928]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [FAIL][43] ([i915#699]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl9/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk7/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-glk2/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-busy:
    - shard-tglb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb1/igt@kms_vblank@pipe-d-wait-busy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-tglb5/igt@kms_vblank@pipe-d-wait-busy.html

  * igt@syncobj_wait@single-wait-for-submit-unsubmitted:
    - shard-apl:          [DMESG-WARN][57] ([i915#95]) -> [PASS][58] +27 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl7/igt@syncobj_wait@single-wait-for-submit-unsubmitted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-apl2/igt@syncobj_wait@single-wait-for-submit-unsubmitted.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][59] ([i915#454]) -> [SKIP][60] ([i915#468])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [DMESG-FAIL][61] ([fdo#110321] / [i915#95]) -> [TIMEOUT][62] ([i915#1319])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl2/igt@kms_content_protection@atomic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][63] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][64] ([i915#1319] / [i915#1635]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][65] ([i915#1319] / [i915#1635]) -> [FAIL][66] ([fdo#110321])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl7/igt@kms_content_protection@srm.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-apl2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][67] ([IGT#5]) -> [DMESG-WARN][68] ([i915#1982])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][70] ([i915#1982])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][71] ([i915#31]) -> [DMESG-FAIL][72] ([i915#31] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl3/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/shard-apl1/igt@kms_setmode@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8597 -> Patchwork_17901

  CI-20190529: 20190529
  CI_DRM_8597: aadd3cf12a7c515bca8752da797ded56a003617b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5696: 8d1744239f4300eb12d5bab14a30b79d9c8dd364 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17901: c3019da98129f263800477ae0cd767c2179fc034 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17901/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
