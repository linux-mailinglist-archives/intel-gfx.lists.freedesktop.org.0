Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D213177C6F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 17:53:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678F76E91B;
	Tue,  3 Mar 2020 16:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D376E6E91A;
 Tue,  3 Mar 2020 16:53:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CADD9A0088;
 Tue,  3 Mar 2020 16:53:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 03 Mar 2020 16:53:52 -0000
Message-ID: <158325443282.15380.9242583209406994514@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220123217.23635-1-anshuman.gupta@intel.com>
In-Reply-To: <20200220123217.23635-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_Comp_fixes_=28rev3=29?=
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

Series: HDCP 2.2 Comp fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/73708/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8050_full -> Patchwork_16792_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16792_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-apl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +20 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@promotion-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb6/igt@gem_exec_schedule@promotion-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb1/igt@gem_exec_schedule@promotion-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl7/igt@gem_workarounds@suspend-resume-context.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#34])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#34])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl7/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-apl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112080]) +15 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [INCOMPLETE][41] ([i915#1197] / [i915#1239]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [FAIL][43] ([i915#679]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][45] ([fdo#110854]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +13 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][57] ([i915#899]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - shard-snb:          [SKIP][61] ([fdo#109271]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-snb5/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-snb4/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][63] ([i915#69]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +12 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8050 -> Patchwork_16792

  CI-20190529: 20190529
  CI_DRM_8050: 422d76f5669ce8b7cd0c579f60628877159cbe7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5484: 91b36b61e76901a2bd09fe93ac7bf7b8a60f258c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16792: 1c652492ce24706a22705cc827866ec8388fb25c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16792/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
