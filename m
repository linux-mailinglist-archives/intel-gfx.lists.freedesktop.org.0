Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69CA17BCAE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 13:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B874E6E43C;
	Fri,  6 Mar 2020 12:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6022E6E434;
 Fri,  6 Mar 2020 12:28:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59174A00EF;
 Fri,  6 Mar 2020 12:28:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 12:28:50 -0000
Message-ID: <158349773033.3081.2014564704968631019@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305104210.2619967-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200305104210.2619967-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Actually_emit_the_await=5Fstart?=
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

Series: drm/i915: Actually emit the await_start
URL   : https://patchwork.freedesktop.org/series/74319/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8070_full -> Patchwork_16836_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16836_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_capture@capture-bsd2:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@gem_exec_capture@capture-bsd2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb3/igt@gem_exec_capture@capture-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#49])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#899])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109642] / [fdo#111068])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#31])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl7/igt@kms_setmode@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-apl1/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl7/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-kbl6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112080]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][27] ([fdo#112080]) -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-tglb:         [INCOMPLETE][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-tglb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2:
    - shard-tglb:         [FAIL][31] ([i915#679]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-tglb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][35] ([i915#447]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][39] ([IGT#5]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][41] ([i915#1188]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [INCOMPLETE][45] ([i915#69]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][47] ([fdo#108145]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][49] ([fdo#109441]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd1:
    - shard-iclb:         [INCOMPLETE][53] ([i915#1381]) -> [SKIP][54] ([fdo#109276])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [INCOMPLETE][56] ([i915#1381])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@i915_module_load@reload:
    - shard-kbl:          [INCOMPLETE][57] ([fdo#103665]) -> [INCOMPLETE][58] ([fdo#103665] / [i915#1390])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl1/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-kbl7/igt@i915_module_load@reload.html
    - shard-glk:          [INCOMPLETE][59] ([i915#58] / [k.org#198133]) -> [INCOMPLETE][60] ([i915#1390] / [i915#58] / [k.org#198133])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk6/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-glk9/igt@i915_module_load@reload.html
    - shard-apl:          [INCOMPLETE][61] ([fdo#103927]) -> [INCOMPLETE][62] ([fdo#103927] / [i915#1390])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl6/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-apl4/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][63] ([i915#468]) -> [FAIL][64] ([i915#454])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1381]: https://gitlab.freedesktop.org/drm/intel/issues/1381
  [i915#1390]: https://gitlab.freedesktop.org/drm/intel/issues/1390
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8070 -> Patchwork_16836

  CI-20190529: 20190529
  CI_DRM_8070: d4e6f8b48e361f0cae9132f50f1778707b2546a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16836: cb6ff8492eb0da08a771276bab3aa509076748c0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16836/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
