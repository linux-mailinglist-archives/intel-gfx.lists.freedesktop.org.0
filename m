Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81701143384
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 22:52:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE2D26EB49;
	Mon, 20 Jan 2020 21:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F82D6EB48;
 Mon, 20 Jan 2020 21:52:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17523A011C;
 Mon, 20 Jan 2020 21:52:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 21:52:45 -0000
Message-ID: <157955716506.681.13540046981064639274@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200118105217.3484773-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200118105217.3484773-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Clear_the_whole_first_page_of_LRC_on_gen9?=
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

Series: drm/i915/gt: Clear the whole first page of LRC on gen9
URL   : https://patchwork.freedesktop.org/series/72229/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7772_full -> Patchwork_16165_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16165_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][3] -> [FAIL][4] ([i915#232])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-snb5/igt@gem_eio@reset-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#109])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl5/igt@gem_exec_reloc@basic-gtt-active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-skl9/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][7] -> [INCOMPLETE][8] ([fdo#103927] / [i915#530])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-apl2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][9] -> [TIMEOUT][10] ([fdo#112271] / [i915#530])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [PASS][11] -> [TIMEOUT][12] ([fdo#112271] / [i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [PASS][13] -> [TIMEOUT][14] ([fdo#112271] / [i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-skl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-snb:          [PASS][15] -> [INCOMPLETE][16] ([i915#530] / [i915#82])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-snb6/igt@gem_persistent_relocs@forked-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-snb4/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-glk9/igt@gen9_exec_parse@allowed-all.html
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#716])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#716])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][27] -> [DMESG-FAIL][28] ([i915#725])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-hsw7/igt@i915_selftest@live_blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#79]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
#### Possible fixes ####

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [TIMEOUT][33] ([fdo#112271] / [i915#530]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][35] ([i915#644]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-skl4/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [INCOMPLETE][39] ([fdo#103665] / [i915#151]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl6/igt@i915_pm_rpm@system-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-kbl7/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [INCOMPLETE][41] ([i915#58] / [k.org#198133]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk7/igt@i915_selftest@mock_requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-glk2/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][43] ([i915#72]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][45] ([i915#221]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_lease@cursor_implicit_plane:
    - shard-snb:          [SKIP][47] ([fdo#109271]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-snb2/igt@kms_lease@cursor_implicit_plane.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-snb5/igt@kms_lease@cursor_implicit_plane.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][51] ([i915#82]) -> [DMESG-WARN][52] ([i915#444])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-snb5/igt@gem_eio@kms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-snb1/igt@gem_eio@kms.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][53], [FAIL][54]) ([i915#997]) -> ([FAIL][55], [FAIL][56], [FAIL][57]) ([i915#716] / [i915#997])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl7/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl7/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-kbl6/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-kbl4/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-kbl3/igt@runner@aborted.html
    - shard-glk:          [FAIL][58] ([i915#873] / [k.org#202321]) -> [FAIL][59] ([k.org#202321])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk7/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-glk9/igt@runner@aborted.html
    - shard-snb:          [FAIL][60] ([i915#873]) -> ([FAIL][61], [FAIL][62]) ([i915#436] / [i915#873])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-snb5/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-snb1/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/shard-snb6/igt@runner@aborted.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7772 -> Patchwork_16165

  CI-20190529: 20190529
  CI_DRM_7772: f65c394056d8637ff151fa83d5d1613adc0932d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16165: 35857905a3b359c6f1e1744013009ddb848b8d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16165/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
