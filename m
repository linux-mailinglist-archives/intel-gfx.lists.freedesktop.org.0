Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9168114F932
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 18:50:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9581F6E15B;
	Sat,  1 Feb 2020 17:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E17B26E02A;
 Sat,  1 Feb 2020 17:49:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1266A0003;
 Sat,  1 Feb 2020 17:49:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Sat, 01 Feb 2020 17:49:59 -0000
Message-ID: <158057939969.32692.2235345538574797775@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129232448.84704-1-jose.souza@intel.com>
In-Reply-To: <20200129232448.84704-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/mst=3A_Fix_possible_NULL_pointer_dereference_in_drm=5Fdp=5Fmst?=
 =?utf-8?b?X3Byb2Nlc3NfdXBfcmVxKCk=?=
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

Series: drm/mst: Fix possible NULL pointer dereference in drm_dp_mst_process_up_req()
URL   : https://patchwork.freedesktop.org/series/72752/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7840_full -> Patchwork_16326_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16326_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +11 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-skl1/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-skl5/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-iclb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#109100])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb8/igt@gem_softpin@noreloc-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb3/igt@gem_softpin@noreloc-s3.html
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#72])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#53])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-skl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-skl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-tglb:         [FAIL][35] ([i915#679]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-tglb3/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-tglb8/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-hsw:          [TIMEOUT][37] ([fdo#112271] / [i915#1084] / [i915#775]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-hsw2/igt@gem_eio@in-flight-contexts-10ms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-hsw1/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-kbl2/igt@gem_eio@in-flight-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-kbl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][47] ([i915#447]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][55] ([fdo#112080]) -> [PASS][56] +17 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb6/igt@perf_pmu@init-busy-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +18 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb4/igt@prime_busy@hang-bsd2.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][59] ([i915#831]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [FAIL][62] ([IGT#28]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@in-flight-1us:
    - shard-skl:          [INCOMPLETE][63] ([CI#80] / [i915#1098]) -> [INCOMPLETE][64] ([i915#1098])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-skl4/igt@gem_eio@in-flight-1us.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-skl10/igt@gem_eio@in-flight-1us.html
    - shard-kbl:          [TIMEOUT][65] ([fdo#112271]) -> [INCOMPLETE][66] ([CI#80] / [fdo#103665] / [i915#1098])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-kbl4/igt@gem_eio@in-flight-1us.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-kbl2/igt@gem_eio@in-flight-1us.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][67] ([i915#818]) -> [DMESG-FAIL][68] ([i915#44])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][69] ([i915#454]) -> [SKIP][70] ([i915#468])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][71] ([i915#468]) -> [FAIL][72] ([i915#454])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1098]: https://gitlab.freedesktop.org/drm/intel/issues/1098
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#775]: https://gitlab.freedesktop.org/drm/intel/issues/775
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7840 -> Patchwork_16326

  CI-20190529: 20190529
  CI_DRM_7840: 5a0adbdabc71233afe7d4463ea575c199ddbe787 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5406: 786c79af483a9f6e4688811f74116030c734ca1f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16326: f0f1d2954987c6f97dc429512b0750b522fc28be @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16326/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
