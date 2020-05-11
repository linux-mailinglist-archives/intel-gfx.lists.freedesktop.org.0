Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 169001CE867
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 00:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13556E5C0;
	Mon, 11 May 2020 22:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E78496E5C0;
 Mon, 11 May 2020 22:45:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4CBFA0088;
 Mon, 11 May 2020 22:45:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Mon, 11 May 2020 22:45:31 -0000
Message-ID: <158923713183.13118.5603084772758301874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417212408.19649-1-shawn.c.lee@intel.com>
In-Reply-To: <20200417212408.19649-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mst=3A_filter_out_the_display_mode_exceed_sink=27s_capabi?=
 =?utf-8?q?lity_=28rev2=29?=
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

Series: drm/i915/mst: filter out the display mode exceed sink's capability (rev2)
URL   : https://patchwork.freedesktop.org/series/76095/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8466_full -> Patchwork_17629_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17629_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-random:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#54])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#1188])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-skl6/igt@kms_hdr@bpc-switch.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#1559] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-apl1/igt@kms_plane_cursor@pipe-a-viewport-size-64.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-apl3/igt@kms_plane_cursor@pipe-a-viewport-size-64.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen:
    - shard-skl:          [FAIL][15] ([i915#54]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-tglb:         [SKIP][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-tglb3/igt@kms_cursor_legacy@pipe-d-single-move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-tglb6/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][19] ([fdo#109349]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22] +11 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][25] ([i915#1188]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][27] ([fdo#108145] / [i915#265]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][29] ([fdo#109642] / [fdo#111068]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-iclb4/igt@kms_psr@psr2_basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][33] ([i915#31]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-apl8/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-apl4/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][35] ([i915#1542]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-iclb7/igt@perf@blocking-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-iclb5/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][37] ([i915#1319]) -> [FAIL][38] ([fdo#110321] / [fdo#110336])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-apl4/igt@kms_content_protection@atomic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][39] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8466 -> Patchwork_17629

  CI-20190529: 20190529
  CI_DRM_8466: eea130b942bec4cb8c19514b3a63aed25e4dec27 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5646: 5a5a3162a7638b3ae38b6dc2545622c204d1b97c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17629: 269c1ff2c6f55bae701dbff3ebfcd1a0979b09ca @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17629/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
