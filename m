Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 510551E72AA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 04:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37AB76E857;
	Fri, 29 May 2020 02:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B9E156E856;
 Fri, 29 May 2020 02:42:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 974F6A0BA8;
 Fri, 29 May 2020 02:42:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 02:42:27 -0000
Message-ID: <159072014759.3331.17849124417548737095@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528211524.29107-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528211524.29107-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915/gt=3A_Start_timeslice_on?=
 =?utf-8?q?_partial_submission?=
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

Series: series starting with [01/11] drm/i915/gt: Start timeslice on partial submission
URL   : https://patchwork.freedesktop.org/series/77762/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8549_full -> Patchwork_17809_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8549_full and Patchwork_17809_full:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_17809_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1602] / [i915#456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-tglb8/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-tglb6/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#54] / [i915#93] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#128]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-tglb6/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-tglb5/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1188]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][13] ([i915#69]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl4/igt@gem_eio@in-flight-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-skl8/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-tglb:         [FAIL][15] ([i915#1930]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-tglb3/igt@gem_exec_reloc@basic-concurrent0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-tglb3/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-apl:          [FAIL][17] ([i915#1930]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-kbl:          [FAIL][19] ([i915#1930]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl6/igt@gem_exec_reloc@basic-concurrent0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-kbl2/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-snb:          [FAIL][21] ([i915#1930]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-snb5/igt@gem_exec_reloc@basic-concurrent0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-snb1/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-iclb:         [FAIL][23] ([i915#1930]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-iclb5/igt@gem_exec_reloc@basic-concurrent16.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-iclb3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [FAIL][25] ([i915#1930]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl2/igt@gem_exec_reloc@basic-concurrent16.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-skl5/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][27] ([i915#58] / [k.org#198133]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-glk8/igt@gem_exec_reloc@basic-concurrent16.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-glk7/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-apl:          [TIMEOUT][29] ([i915#1635]) -> [PASS][30] +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-apl7/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [FAIL][31] ([fdo#103375]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl2/igt@i915_pm_rpm@system-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-kbl6/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][33] ([i915#636] / [i915#69]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl1/igt@i915_suspend@forcewake.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-skl1/igt@i915_suspend@forcewake.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-edp1}:
    - shard-skl:          [INCOMPLETE][35] ([i915#198]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][45] ([i915#468]) -> [FAIL][46] ([i915#454])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][47] ([i915#1319] / [i915#1635]) -> [FAIL][48] ([fdo#110321] / [fdo#110336])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl2/igt@kms_content_protection@atomic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][49] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][50] ([i915#1319] / [i915#1635])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl7/igt@kms_content_protection@legacy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-apl3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-WARN][51] ([i915#1926]) -> [DMESG-FAIL][52] ([i915#1925])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          [FAIL][53] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][54] ([fdo#108145] / [i915#265]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8549 -> Patchwork_17809

  CI-20190529: 20190529
  CI_DRM_8549: e50e9c6bf4efd00b02d91ff470993bbd0db94f67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5682: e5371a99a877be134c6ad5361a5f03843a66f775 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17809: 70c78cfa6ea58dde569696417b5e00d7ad6b7151 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
