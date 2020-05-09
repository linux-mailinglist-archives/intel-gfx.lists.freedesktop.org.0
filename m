Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B08BE1CC240
	for <lists+intel-gfx@lfdr.de>; Sat,  9 May 2020 16:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 429606E372;
	Sat,  9 May 2020 14:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6EB326E36F;
 Sat,  9 May 2020 14:50:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F2EBA47DA;
 Sat,  9 May 2020 14:50:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 09 May 2020 14:50:30 -0000
Message-ID: <158903583036.12066.6233911272886209808@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200509105021.12542-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200509105021.12542-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Replace_the_hardcoded_I915=5FFENCE=5FTIMEOUT?=
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

Series: drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
URL   : https://patchwork.freedesktop.org/series/77103/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8456_full -> Patchwork_17616_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17616_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#1436] / [i915#716])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-kbl2/igt@gen9_exec_parse@allowed-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1795])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl6/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-skl1/igt@i915_selftest@live@execlists.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-snb:          [PASS][5] -> [SKIP][6] ([fdo#109271]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#49])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#123] / [i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl9/igt@kms_hdr@bpc-switch.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#31])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-kbl6/igt@kms_setmode@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-kbl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][21] ([fdo#109276]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-tglb:         [DMESG-WARN][23] ([i915#128]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-tglb2/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-tglb6/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][27] ([i915#198]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#699]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl9/igt@kms_flip_tiling@flip-x-tiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-skl2/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][31] ([i915#49]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-iclb6/igt@kms_psr@psr2_primary_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][37] ([i915#1319]) -> [FAIL][38] ([fdo#110321] / [fdo#110336])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl7/igt@kms_content_protection@atomic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-apl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][39] ([i915#1319]) -> [DMESG-FAIL][40] ([fdo#110321])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][41] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][42] ([i915#1319])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl1/igt@kms_content_protection@legacy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/shard-apl6/igt@kms_content_protection@legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8456 -> Patchwork_17616

  CI-20190529: 20190529
  CI_DRM_8456: 4027cd5e6a38cb88b4ae0296d2f06daf8944f26b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5643: 9d0576c821f886fd053effd96cd3c441fee2ce53 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17616: 74d6c4c5f71b87b5ee147fa097eb8938c9c98231 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17616/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
