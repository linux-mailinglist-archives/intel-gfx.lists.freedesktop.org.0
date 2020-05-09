Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9829A1CC1E1
	for <lists+intel-gfx@lfdr.de>; Sat,  9 May 2020 15:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81BEC6E353;
	Sat,  9 May 2020 13:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C2E06E34E;
 Sat,  9 May 2020 13:49:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 361C8A7DFF;
 Sat,  9 May 2020 13:49:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 09 May 2020 13:49:00 -0000
Message-ID: <158903214021.12068.8501322464260575739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200509094222.16666-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200509094222.16666-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Mark_up_the_racy_read_of_execlists-=3Econtext=5Ftag?=
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

Series: drm/i915/gt: Mark up the racy read of execlists->context_tag
URL   : https://patchwork.freedesktop.org/series/77099/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8456_full -> Patchwork_17614_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17614_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl8/igt@i915_suspend@debugfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-skl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-legacy-gamma:
    - shard-snb:          [PASS][3] -> [SKIP][4] ([fdo#109271]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-snb2/igt@kms_color@pipe-b-legacy-gamma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-snb1/igt@kms_color@pipe-b-legacy-gamma.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#72])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1188])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl9/igt@kms_hdr@bpc-switch.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109441]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#31])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-kbl6/igt@kms_setmode@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-kbl6/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-tglb:         [DMESG-WARN][13] ([i915#128]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-tglb2/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-tglb2/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][15] ([i915#180]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][17] ([i915#198]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-skl:          [FAIL][19] ([fdo#108145] / [i915#699]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl9/igt@kms_flip_tiling@flip-x-tiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-skl5/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][21] ([i915#49]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][23] ([i915#899]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][25] ([fdo#109441]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][27] ([i915#1319]) -> [FAIL][28] ([fdo#110321] / [fdo#110336])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][29] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][30] ([i915#1319])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl1/igt@kms_content_protection@legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-apl3/igt@kms_content_protection@legacy.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-apl:          [FAIL][31] ([i915#49] / [i915#95]) -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8456 -> Patchwork_17614

  CI-20190529: 20190529
  CI_DRM_8456: 4027cd5e6a38cb88b4ae0296d2f06daf8944f26b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5643: 9d0576c821f886fd053effd96cd3c441fee2ce53 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17614: 667a54b0c4c137832da216fc858a12f828d9adbf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17614/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
