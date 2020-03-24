Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A650F191C74
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 23:04:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3616E0CC;
	Tue, 24 Mar 2020 22:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FC9D6E550;
 Tue, 24 Mar 2020 22:04:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CFB4A00CC;
 Tue, 24 Mar 2020 22:04:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 24 Mar 2020 22:04:12 -0000
Message-ID: <158508745244.5745.3862884874813069673@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324201429.29153-1-jose.souza@intel.com>
In-Reply-To: <20200324201429.29153-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/6=5D_drm/i915/tc/tgl=3A_Implement_T?=
 =?utf-8?q?CCOLD_sequences?=
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

Series: series starting with [v3,1/6] drm/i915/tc/tgl: Implement TCCOLD sequences
URL   : https://patchwork.freedesktop.org/series/75034/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8183_full -> Patchwork_17073_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17073_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl10/igt@gem_ctx_isolation@vecs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-skl5/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-ringfull-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb4/igt@gem_exec_schedule@pi-ringfull-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb6/igt@gem_exec_schedule@pi-ringfull-bsd2.html

  * igt@gem_linear_blits@interruptible:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#1263])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-apl7/igt@gem_linear_blits@interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-apl4/igt@gem_linear_blits@interruptible.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103927] / [i915#656])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-apl4/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-apl7/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#221])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109642] / [fdo#111068])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb7/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#198])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl7/igt@kms_psr@suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-skl5/igt@kms_psr@suspend.html

  * igt@perf_pmu@idle-vcs1:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#112080]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@perf_pmu@idle-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb7/igt@perf_pmu@idle-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][33] ([fdo#110841]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][35] ([i915#470] / [i915#529]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-tglb2/igt@gem_exec_parallel@contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-tglb6/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@gem_exec_schedule@independent-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb7/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_ringfill@basic-default-hang:
    - shard-tglb:         [INCOMPLETE][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-tglb6/igt@gem_ringfill@basic-default-hang.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-tglb2/igt@gem_ringfill@basic-default-hang.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          [FAIL][43] ([i915#54]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-glk:          [FAIL][47] ([i915#54]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-glk4/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][49] ([i915#34]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb3/igt@kms_psr@psr2_basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][53] ([i915#31]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl6/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-skl9/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][55] ([fdo#112080]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +11 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][59] ([i915#1515]) -> [FAIL][60] ([i915#1515])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@cursor:
    - shard-snb:          [INCOMPLETE][61] ([i915#82]) -> [SKIP][62] ([fdo#109271]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-snb2/igt@i915_pm_rpm@cursor.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-snb4/igt@i915_pm_rpm@cursor.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][63] ([fdo#103927]) -> ([FAIL][64], [FAIL][65]) ([fdo#103927] / [i915#529])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-apl4/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-apl7/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/shard-apl7/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1263]: https://gitlab.freedesktop.org/drm/intel/issues/1263
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8183 -> Patchwork_17073

  CI-20190529: 20190529
  CI_DRM_8183: 795894daf2cc32246af94541733e08649d082470 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5535: d1dcf40cc6869ac858586c5ad9f09af6617ce2ee @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17073: ae9ffbf9a4cc21805d5481a736c331b8140b4ba9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
