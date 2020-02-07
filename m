Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D9A15566B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 12:10:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B078F89718;
	Fri,  7 Feb 2020 11:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 451E089718;
 Fri,  7 Feb 2020 11:10:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D572A0003;
 Fri,  7 Feb 2020 11:10:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Fri, 07 Feb 2020 11:10:37 -0000
Message-ID: <158107383722.8752.4227695191393518870@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106174156.11081-1-shawn.c.lee@intel.com>
In-Reply-To: <20200106174156.11081-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp/mst_=3A_Get_clock_rate_from_sink=27s_available_PBN_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915/dp/mst : Get clock rate from sink's available PBN (rev2)
URL   : https://patchwork.freedesktop.org/series/71647/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7867_full -> Patchwork_16425_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16425_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_caching@read-writes:
    - shard-hsw:          [PASS][3] -> [FAIL][4] ([i915#694])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-hsw4/igt@gem_caching@read-writes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-hsw6/igt@gem_caching@read-writes.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#413])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_gtt:
    - shard-kbl:          [PASS][13] -> [TIMEOUT][14] ([fdo#112271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-kbl3/igt@i915_selftest@live_gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-kbl2/igt@i915_selftest@live_gtt.html

  * igt@kms_color@pipe-b-ctm-red-to-blue:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#129])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl4/igt@kms_color@pipe-b-ctm-red-to-blue.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-skl5/igt@kms_color@pipe-b-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#46])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#221])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl9/igt@kms_flip@flip-vs-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +17 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +14 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][33] ([fdo#109276]) -> [PASS][34] +17 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-hsw:          [FAIL][37] ([i915#694]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-hsw7/igt@gem_partial_pwrite_pread@write-snoop.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-hsw1/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][41] ([i915#447]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - shard-skl:          [FAIL][43] ([i915#54]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][45] ([i915#79]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-apl:          [FAIL][49] ([i915#34]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-apl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-apl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][55] ([i915#899]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][59] ([i915#31]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-kbl6/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-kbl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][61] ([IGT#28]) -> [SKIP][62] ([fdo#112080])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][63] ([i915#694]) -> [FAIL][64] ([i915#818])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-hsw4/igt@gem_tiled_blits@normal.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][65] ([i915#454]) -> [SKIP][66] ([i915#468])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][67] ([i915#725]) -> [DMESG-FAIL][68] ([i915#770])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-hsw8/igt@i915_selftest@live_blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-hsw8/igt@i915_selftest@live_blt.html

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-iclb:         [SKIP][69] ([fdo#109278] / [fdo#112010]) -> [SKIP][70] ([fdo#109278] / [fdo#112010] / [i915#1149]) +9 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb2/igt@kms_color@pipe-d-ctm-0-25.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb5/igt@kms_color@pipe-d-ctm-0-25.html
    - shard-tglb:         [FAIL][71] ([i915#315]) -> [FAIL][72] ([i915#1149] / [i915#315])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-tglb7/igt@kms_color@pipe-d-ctm-0-25.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-tglb7/igt@kms_color@pipe-d-ctm-0-25.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][73] ([fdo#107724]) -> [SKIP][74] ([fdo#109349])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112010]: https://bugs.freedesktop.org/show_bug.cgi?id=112010
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7867 -> Patchwork_16425

  CI-20190529: 20190529
  CI_DRM_7867: a4c409e48c6281538b1e375545dfb5989fa02063 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5418: 4028bd390b41925f6e26f6f11b31e05054652527 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16425: 1cb408eb7f9a1e8aea209a6fd4542c67721fa949 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16425/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
