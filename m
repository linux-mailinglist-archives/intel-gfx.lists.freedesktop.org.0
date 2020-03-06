Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7875317C744
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 21:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9ACB6E505;
	Fri,  6 Mar 2020 20:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4BE116E4FF;
 Fri,  6 Mar 2020 20:49:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43BB6A0071;
 Fri,  6 Mar 2020 20:49:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Fri, 06 Mar 2020 20:49:03 -0000
Message-ID: <158352774324.3083.4706141933047317804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305201236.152307-1-sean@poorly.run>
In-Reply-To: <20200305201236.152307-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_=28rev5?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev5)
URL   : https://patchwork.freedesktop.org/series/70393/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8073_full -> Patchwork_16845_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16845_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110854])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-glk4/igt@gem_exec_whisper@basic-queues.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-glk5/igt@gem_exec_whisper@basic-queues.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#413])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb3/igt@i915_pm_rps@waitboost.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-skl9/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#49])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#69])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#899])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb1/igt@kms_psr@psr2_no_drrs.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +14 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@wait-bsd2:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109276]) +10 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb4/igt@prime_vgem@wait-bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb3/igt@prime_vgem@wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-shared-gtt-render:
    - shard-tglb:         [FAIL][33] ([i915#607] / [i915#616]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-tglb5/igt@gem_ctx_shared@exec-shared-gtt-render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-render.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +16 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb7/igt@gem_exec_schedule@out-order-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-iclb:         [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][51] ([i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-skl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][53] ([i915#61]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-apl8/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][63] ([fdo#109642] / [fdo#111068]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][65] ([i915#173]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb1/igt@kms_psr@no_drrs.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb7/igt@kms_psr@no_drrs.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-kbl6/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-kbl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-hsw:          [DMESG-WARN][69] ([fdo#111870]) -> [DMESG-WARN][70] ([fdo#110789] / [fdo#111870])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-hsw6/igt@gem_userptr_blits@sync-unmap-cycles.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-hsw1/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][71] ([fdo#109349]) -> [DMESG-WARN][72] ([i915#1226])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#607]: https://gitlab.freedesktop.org/drm/intel/issues/607
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8073 -> Patchwork_16845

  CI-20190529: 20190529
  CI_DRM_8073: 04042aee59126471bb37cec526ccaf44b4e8d506 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16845: 910e44eeaee67752558b7a4f86d81989a8602dd4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
