Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC4C1DE09D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 09:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829136E98D;
	Fri, 22 May 2020 07:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 48D706E989;
 Fri, 22 May 2020 07:08:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 227B1A7DFA;
 Fri, 22 May 2020 07:08:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 May 2020 07:08:46 -0000
Message-ID: <159013132610.3047.12124869049876915650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521124304.3157692-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200521124304.3157692-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Flush_the_submission=2C_not_cancel_it!?=
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

Series: drm/i915/selftests: Flush the submission, not cancel it!
URL   : https://patchwork.freedesktop.org/series/77510/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8517_full -> Patchwork_17750_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17750_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17750_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17750_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         [DMESG-FAIL][1] ([i915#1759]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-tglb7/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-tglb5/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17750_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge:
    - shard-snb:          [PASS][7] -> [SKIP][8] ([fdo#109271]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-snb6/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-snb6/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#72])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-glk1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109349])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#53] / [i915#93] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-kbl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-kbl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#53] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-apl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-apl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109642] / [fdo#111068])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-skl8/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-skl3/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-skl:          [FAIL][27] ([i915#54]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][29] ([IGT#5]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][37] ([i915#173]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-iclb1/igt@kms_psr@no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-iclb5/igt@kms_psr@psr2_suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-iclb2/igt@kms_psr@psr2_suspend.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][41] ([i915#1319]) -> [FAIL][42] ([fdo#110321] / [fdo#110336] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-apl6/igt@kms_content_protection@atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-apl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][43] ([i915#1319]) -> [FAIL][44] ([fdo#110321] / [fdo#110336])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-apl7/igt@kms_content_protection@legacy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-apl1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][45] ([i915#1319]) -> [FAIL][46] ([fdo#110321])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-apl8/igt@kms_content_protection@lic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][47] ([i915#1319]) -> [FAIL][48] ([fdo#110321] / [i915#93] / [i915#95])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-kbl6/igt@kms_content_protection@srm.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-kbl2/igt@kms_content_protection@srm.html
    - shard-apl:          [TIMEOUT][49] ([i915#1319]) -> [FAIL][50] ([fdo#110321] / [i915#95])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/shard-apl4/igt@kms_content_protection@srm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/shard-apl2/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8517 -> Patchwork_17750

  CI-20190529: 20190529
  CI_DRM_8517: 7c5c05e694bf83e9d4ef64172ef6c9d55aa334a5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5666: dfa3b1fdc9813a48314a43faaacb7dacc06112d6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17750: c499c490cbf2532dd4f28ee93d54d1c5b7344ffd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17750/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
