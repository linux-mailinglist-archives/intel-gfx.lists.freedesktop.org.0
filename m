Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C0A1BD365
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 06:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7265C6EA11;
	Wed, 29 Apr 2020 04:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A398D6EA0E;
 Wed, 29 Apr 2020 04:05:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D0DDA363D;
 Wed, 29 Apr 2020 04:05:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Apr 2020 04:05:31 -0000
Message-ID: <158813313161.6696.15222157387689440593@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428213157.4683-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200428213157.4683-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915/gt=3A_Always_enable_b?=
 =?utf-8?q?usy-stats_for_execlists?=
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

Series: series starting with [CI,1/6] drm/i915/gt: Always enable busy-stats for execlists
URL   : https://patchwork.freedesktop.org/series/76681/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8388_full -> Patchwork_17500_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17500_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-glk2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend@c-edp1}:
    - shard-iclb:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-iclb2/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-iclb3/igt@kms_flip@flip-vs-suspend@c-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_17500_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-kbl1/igt@gem_eio@in-flight-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-kbl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1436] / [i915#716])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-apl8/igt@i915_suspend@sysfs-reader.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#54])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#52] / [i915#54])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-snb:          [PASS][16] -> [SKIP][17] ([fdo#109271])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-snb6/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-snb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] ([i915#69])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#1188])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#173])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-iclb8/igt@kms_psr@no_drrs.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109441]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-iclb4/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * {igt@gem_exec_schedule@wide@vecs0}:
    - shard-tglb:         [INCOMPLETE][26] -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-tglb6/igt@gem_exec_schedule@wide@vecs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-tglb1/igt@gem_exec_schedule@wide@vecs0.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-tglb:         [FAIL][28] ([i915#413]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-tglb7/igt@i915_pm_rps@min-max-config-loaded.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-tglb3/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][30] ([i915#180]) -> [PASS][31] +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][32] ([i915#96]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
    - shard-skl:          [INCOMPLETE][34] ([i915#198]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][36] ([i915#1188]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][38] ([fdo#108145] / [i915#265]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][40] ([fdo#109441]) -> [PASS][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][42] ([i915#31]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-skl1/igt@kms_setmode@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-skl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][44] ([i915#180]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8388 -> Patchwork_17500

  CI-20190529: 20190529
  CI_DRM_8388: 12346af5b9d3ccf046d5e736c02851eec98e49ff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17500: 7ce090c0dff0b10cdc5c6414c063ca80d9c378bd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17500/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
