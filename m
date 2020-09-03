Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C86A125C7C5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 19:04:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4EDB6EA29;
	Thu,  3 Sep 2020 17:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25C036EA29;
 Thu,  3 Sep 2020 17:04:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E330A7DFD;
 Thu,  3 Sep 2020 17:04:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 03 Sep 2020 17:04:53 -0000
Message-ID: <159915269309.15506.5659640068355203947@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1599056955.git.jani.nikula@intel.com>
In-Reply-To: <cover.1599056955.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_modeset_probe_cleanup?=
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
Content-Type: multipart/mixed; boundary="===============1541520165=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1541520165==
Content-Type: multipart/alternative;
 boundary="===============1813645995726465938=="

--===============1813645995726465938==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: modeset probe cleanup
URL   : https://patchwork.freedesktop.org/series/81267/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8955_full -> Patchwork_18435_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18435_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@short-buffer-wakeup:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@drm_read@short-buffer-wakeup.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@drm_read@short-buffer-wakeup.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2389]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][5] -> [TIMEOUT][6] ([i915#1958]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-iclb:         [PASS][7] -> [TIMEOUT][8] ([i915#1958])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-iclb8/igt@gem_exec_whisper@basic-forked.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-iclb1/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [PASS][9] -> [TIMEOUT][10] ([i915#1958])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl10/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_selftest@mock@contexts:
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([i915#1635] / [i915#2278])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-apl3/igt@i915_selftest@mock@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-apl7/igt@i915_selftest@mock@contexts.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#198])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@i915_suspend@fence-restore-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#1982]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-apl8/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-apl2/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk2/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1542])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl5/igt@perf@polling-parameterized.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl9/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1722])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl7/igt@perf@polling-small-buf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl6/igt@perf@polling-small-buf.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-tglb:         [TIMEOUT][31] ([i915#1958]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-tglb5/igt@gem_exec_reloc@basic-concurrent0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-tglb7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [TIMEOUT][33] ([i915#1958]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk4/igt@gem_exec_whisper@basic-fds-forked.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk5/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-apl:          [TIMEOUT][35] ([i915#1635] / [i915#1958]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-apl2/igt@gem_exec_whisper@basic-fds-priority.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-apl1/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_render_tiled_blits@basic:
    - shard-skl:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl10/igt@gem_render_tiled_blits@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl2/igt@gem_render_tiled_blits@basic.html

  * igt@i915_module_load@reload:
    - shard-apl:          [DMESG-WARN][39] ([i915#1635] / [i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-apl7/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-apl8/igt@i915_module_load@reload.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [INCOMPLETE][41] ([i915#198]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl9/igt@i915_suspend@sysfs-reader.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-iclb:         [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][45] ([i915#2346]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - shard-kbl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][53] ([i915#2122]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][55] ([i915#2122]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@kms_hdr@bpc-switch.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][63] ([i915#1542]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@perf@blocking.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@perf@blocking.html

  
#### Warnings ####

  * igt@gem_mmap_gtt@ptrace:
    - shard-skl:          [INCOMPLETE][65] -> [TIMEOUT][66] ([i915#1958])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl6/igt@gem_mmap_gtt@ptrace.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl10/igt@gem_mmap_gtt@ptrace.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8955 -> Patchwork_18435

  CI-20190529: 20190529
  CI_DRM_8955: 744c2c7c60ac2fbe7fae0c25c01a451d41d207b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5776: 46e4315096bcaa2465c82c547274627365b1a69e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18435: 0ff068b7cefd2ce745f26f578b6a46bfada75358 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/index.html

--===============1813645995726465938==
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
<tr><td><b>Series:</b></td><td>drm/i915: modeset probe cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81267/">https://patchwork.freedesktop.org/series/81267/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8955_full -&gt; Patchwork_18435_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18435_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-wakeup:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@drm_read@short-buffer-wakeup.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@drm_read@short-buffer-wakeup.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-iclb8/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-iclb1/igt@gem_exec_whisper@basic-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl10/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-apl3/igt@i915_selftest@mock@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-apl7/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-apl8/igt@kms_frontbuffer_tracking@fbc-badstride.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-apl2/igt@kms_frontbuffer_tracking@fbc-badstride.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk2/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk1/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl5/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl7/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl6/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-tglb5/igt@gem_exec_reloc@basic-concurrent0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-tglb7/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk4/igt@gem_exec_whisper@basic-fds-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk5/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-apl2/igt@gem_exec_whisper@basic-fds-priority.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-apl1/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl10/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl2/igt@gem_render_tiled_blits@basic.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-apl7/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-apl8/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl9/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl7/igt@i915_suspend@sysfs-reader.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl4/igt@perf@blocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl3/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_mmap_gtt@ptrace:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/shard-skl6/igt@gem_mmap_gtt@ptrace.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/shard-skl10/igt@gem_mmap_gtt@ptrace.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8955 -&gt; Patchwork_18435</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8955: 744c2c7c60ac2fbe7fae0c25c01a451d41d207b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5776: 46e4315096bcaa2465c82c547274627365b1a69e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18435: 0ff068b7cefd2ce745f26f578b6a46bfada75358 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1813645995726465938==--

--===============1541520165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1541520165==--
