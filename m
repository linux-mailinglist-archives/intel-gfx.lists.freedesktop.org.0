Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA69A19D8AB
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 16:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4E46EBBB;
	Fri,  3 Apr 2020 14:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43E9C6E131;
 Fri,  3 Apr 2020 14:09:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A7D4A0138;
 Fri,  3 Apr 2020 14:09:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Fri, 03 Apr 2020 14:09:26 -0000
Message-ID: <158592296620.13351.3510012001168168930@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402174417.83739-1-andi@etezian.org>
In-Reply-To: <20200402174417.83739-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_=28rev3?=
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

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev3)
URL   : https://patchwork.freedesktop.org/series/75333/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8238_full -> Patchwork_17188_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17188_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17188_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17188_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-iclb:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb7/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-iclb3/igt@i915_pm_rpm@debugfs-forcewake-user.html
    - shard-tglb:         [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-tglb7/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-tglb1/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@i915_suspend@forcewake:
    - shard-snb:          [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb4/igt@i915_suspend@forcewake.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-snb4/igt@i915_suspend@forcewake.html

  * igt@perf_pmu@rc6:
    - shard-apl:          [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl1/igt@perf_pmu@rc6.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-apl7/igt@perf_pmu@rc6.html
    - shard-glk:          [PASS][9] -> [FAIL][10] +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk6/igt@perf_pmu@rc6.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-glk1/igt@perf_pmu@rc6.html
    - shard-tglb:         [PASS][11] -> [FAIL][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-tglb5/igt@perf_pmu@rc6.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-tglb5/igt@perf_pmu@rc6.html
    - shard-kbl:          [PASS][13] -> [FAIL][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@perf_pmu@rc6.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-kbl2/igt@perf_pmu@rc6.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-skl:          [PASS][15] -> [FAIL][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl9/igt@perf_pmu@rc6-runtime-pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-skl8/igt@perf_pmu@rc6-runtime-pm.html

  * igt@perf_pmu@rc6-runtime-pm-long:
    - shard-iclb:         [PASS][17] -> [FAIL][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb6/igt@perf_pmu@rc6-runtime-pm-long.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-iclb6/igt@perf_pmu@rc6-runtime-pm-long.html
    - shard-skl:          NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-skl3/igt@perf_pmu@rc6-runtime-pm-long.html

  
Known issues
------------

  Here are the changes found in Patchwork_17188_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_cs_tlb@vcs1:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112080])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb4/igt@gem_cs_tlb@vcs1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-iclb7/igt@gem_cs_tlb@vcs1.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-skl:          [PASS][22] -> [SKIP][23] ([fdo#109271])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl8/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-skl5/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@i915_pm_sseu@full-enable:
    - shard-apl:          [PASS][24] -> [SKIP][25] ([fdo#109271]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl8/igt@i915_pm_sseu@full-enable.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-apl4/igt@i915_pm_sseu@full-enable.html
    - shard-kbl:          [PASS][26] -> [SKIP][27] ([fdo#109271]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl4/igt@i915_pm_sseu@full-enable.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-kbl4/igt@i915_pm_sseu@full-enable.html
    - shard-glk:          [PASS][28] -> [SKIP][29] ([fdo#109271]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk7/igt@i915_pm_sseu@full-enable.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-glk4/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#1531])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-tglb7/igt@i915_selftest@live@requests.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-tglb1/igt@i915_selftest@live@requests.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][32] -> [INCOMPLETE][33] ([i915#69])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#79])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#34])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#1188])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-apl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +4 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([fdo#108145] / [i915#265])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - shard-kbl:          [PASS][46] -> [FAIL][47] ([i915#1559] / [i915#93] / [i915#95])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-kbl6/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
    - shard-apl:          [PASS][48] -> [FAIL][49] ([i915#1559] / [i915#95])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl2/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-apl3/igt@kms_plane_cursor@pipe-a-overlay-size-128.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][52] ([fdo#110854]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [FAIL][54] -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl1/igt@gem_tiled_swapping@non-threaded.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-apl7/igt@gem_tiled_swapping@non-threaded.html

  * {igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt}:
    - shard-snb:          [DMESG-WARN][56] ([i915#478]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][60] ([i915#79]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][62] ([i915#34]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][64] ([i915#1188]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl2/igt@kms_hdr@bpc-switch.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][66] ([i915#180]) -> [PASS][67] +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][68] ([fdo#108145] / [i915#265]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [SKIP][72] ([fdo#109276]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb3/igt@prime_busy@after-bsd2.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-iclb4/igt@prime_busy@after-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-kbl:          [FAIL][74] -> [DMESG-FAIL][75] ([i915#183])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@gem_tiled_swapping@non-threaded.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-kbl2/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-snb:          [INCOMPLETE][76] ([i915#82]) -> [SKIP][77] ([fdo#109271])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb1/igt@i915_pm_dc@dc6-dpms.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-snb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][78] ([i915#454]) -> [SKIP][79] ([i915#468])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-iclb:         [SKIP][80] ([i915#1316]) -> [SKIP][81] ([i915#1316] / [i915#579]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-iclb1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][82] ([fdo#109642] / [fdo#111068]) -> [FAIL][83] ([i915#608])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8238 -> Patchwork_17188

  CI-20190529: 20190529
  CI_DRM_8238: 840f70602a47208a2f1e444ba276f412f10e38df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5558: 3b55a816300d80bc5e0b995cd41ee8c8649a1ea2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17188: db515ae2c79c34e64b3c0909064d21358cbf1170 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
