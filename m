Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8256E16F43B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 01:26:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C276E029;
	Wed, 26 Feb 2020 00:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43F146E029;
 Wed, 26 Feb 2020 00:26:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3336AA3C0D;
 Wed, 26 Feb 2020 00:26:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 26 Feb 2020 00:26:33 -0000
Message-ID: <158267679318.21011.3106538953162023242@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224124004.26712-1-anshuman.gupta@intel.com>
In-Reply-To: <20200224124004.26712-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgMyBk?=
 =?utf-8?q?isplay_pipes_combination_system_support_=28rev4=29?=
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

Series: 3 display pipes combination system support (rev4)
URL   : https://patchwork.freedesktop.org/series/72468/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7998_full -> Patchwork_16687_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16687_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110854])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +12 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl7/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-skl9/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-dpms:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-dpms.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#34])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-tglb:         [PASS][21] -> [SKIP][22] ([i915#668]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-tglb1/igt@kms_psr@psr2_sprite_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-tglb1/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112080]) +12 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][27] ([fdo#112080]) -> [PASS][28] +9 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * {igt@gem_exec_schedule@implicit-both-bsd1}:
    - shard-iclb:         [SKIP][29] ([fdo#109276] / [i915#677]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [SKIP][31] ([fdo#112146]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb2/igt@gem_exec_schedule@independent-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb3/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][35] ([i915#644]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [FAIL][37] ([i915#644]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-tglb2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][39] ([i915#716]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][43] ([i915#146] / [i915#221]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-skl8/igt@kms_flip@flip-vs-suspend.html

  * {igt@kms_hdr@bpc-switch}:
    - shard-skl:          [FAIL][45] ([i915#1188]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl3/igt@kms_hdr@bpc-switch.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][49] ([fdo#108145]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][51] ([i915#899]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][53] ([fdo#109642] / [fdo#111068]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb7/igt@kms_psr2_su@page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb4/igt@kms_psr@psr2_suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][57] ([i915#31]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-apl4/igt@kms_setmode@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-apl6/igt@kms_setmode@basic.html

  * igt@perf@oa-formats:
    - shard-iclb:         [FAIL][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb1/igt@perf@oa-formats.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb8/igt@perf@oa-formats.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +21 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [FAIL][64] ([IGT#28])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66] ([i915#454])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][67] ([fdo#112271]) -> [TIMEOUT][68] ([fdo#112271] / [i915#727])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-kbl1/igt@kms_content_protection@atomic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-kbl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][69] ([fdo#112271] / [i915#727]) -> [TIMEOUT][70] ([fdo#112271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-kbl7/igt@kms_content_protection@lic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][71] ([i915#1226]) -> [SKIP][72] ([fdo#109349])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7998 -> Patchwork_16687

  CI-20190529: 20190529
  CI_DRM_7998: 7b1bb0188905d180ee11694d9c26c5dd656dc1d1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16687: fbf356608f3dd41fcfca8663085a7e4f081dca93 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16687/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
