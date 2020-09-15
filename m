Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77770269A7E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 02:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D91756E823;
	Tue, 15 Sep 2020 00:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3CE916E094;
 Tue, 15 Sep 2020 00:39:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36AE3A008A;
 Tue, 15 Sep 2020 00:39:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 15 Sep 2020 00:39:58 -0000
Message-ID: <160013039819.30601.3354087486706978367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness?=
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
Content-Type: multipart/mixed; boundary="===============1158803671=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1158803671==
Content-Type: multipart/alternative;
 boundary="===============1806807832312999536=="

--===============1806807832312999536==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Per client engine busyness
URL   : https://patchwork.freedesktop.org/series/81652/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9007_full -> Patchwork_18491_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18491_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1185])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb7/igt@gem_workarounds@suspend-resume-fd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#198])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl6/igt@i915_suspend@debugfs-reader.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl3/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#79])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#699])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl5/igt@kms_flip_tiling@flip-y-tiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl2/igt@kms_flip_tiling@flip-y-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#1635] / [i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl3/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl3/igt@kms_setmode@basic.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +12 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl7/igt@perf@polling-small-buf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl1/igt@perf@polling-small-buf.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][27] ([i915#658]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb8/igt@feature_discovery@psr2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-apl:          [FAIL][29] ([i915#1635] / [i915#2374]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [FAIL][31] ([i915#1635] / [i915#2389]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl7/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][33] ([i915#1635] / [i915#644]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-kbl6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-kbl1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][37] ([i915#300]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - shard-apl:          [DMESG-WARN][39] ([i915#1635] / [i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][41] ([i915#2122]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-iclb:         [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][55] ([i915#1542]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl8/igt@perf@polling-parameterized.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl6/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_color@pipe-b-ctm-max:
    - shard-skl:          [DMESG-FAIL][57] ([i915#1982]) -> [DMESG-WARN][58] ([i915#1982])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl9/igt@kms_color@pipe-b-ctm-max.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl4/igt@kms_color@pipe-b-ctm-max.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][59] ([i915#1319] / [i915#1635] / [i915#1958]) -> [TIMEOUT][60] ([i915#1319] / [i915#1635])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl4/igt@kms_content_protection@atomic-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2374]: https://gitlab.freedesktop.org/drm/intel/issues/2374
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9007 -> Patchwork_18491

  CI-20190529: 20190529
  CI_DRM_9007: 30b3e38bd6d569451279af2767b620d0ef88665d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5782: ccfb27dab0f06c009d332053548920cb740e4258 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18491: 2905d1efe3cdef31f3fb25160af0ca178a4d51ac @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/index.html

--===============1806807832312999536==
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
<tr><td><b>Series:</b></td><td>Per client engine busyness</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81652/">https://patchwork.freedesktop.org/series/81652/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9007_full -&gt; Patchwork_18491_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18491_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb7/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl6/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl3/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-y-tiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl5/igt@kms_flip_tiling@flip-y-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl2/igt@kms_flip_tiling@flip-y-tiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/699">i915#699</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl3/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl7/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl1/igt@perf@polling-small-buf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +12 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb8/igt@feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2374">i915#2374</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl7/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/644">i915#644</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-kbl6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-kbl1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl6/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_color@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-skl9/igt@kms_color@pipe-b-ctm-max.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-skl4/igt@kms_color@pipe-b-ctm-max.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9007/shard-apl4/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18491/shard-apl8/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9007 -&gt; Patchwork_18491</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9007: 30b3e38bd6d569451279af2767b620d0ef88665d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5782: ccfb27dab0f06c009d332053548920cb740e4258 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18491: 2905d1efe3cdef31f3fb25160af0ca178a4d51ac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1806807832312999536==--

--===============1158803671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1158803671==--
