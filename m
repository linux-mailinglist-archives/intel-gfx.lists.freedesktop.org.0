Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DAA19D74C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9952A6EB82;
	Fri,  3 Apr 2020 13:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FCE16EB82;
 Fri,  3 Apr 2020 13:10:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79420A66C7;
 Fri,  3 Apr 2020 13:10:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 03 Apr 2020 13:10:56 -0000
Message-ID: <158591945649.13349.3094708954328903286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402142406.1801227-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200402142406.1801227-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgcGVy?=
 =?utf-8?q?f/core=3A_Only_copy-to-user_after_completely_unlocking_all_lock?=
 =?utf-8?b?cywgdjIu?=
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

Series: perf/core: Only copy-to-user after completely unlocking all locks, v2.
URL   : https://patchwork.freedesktop.org/series/75422/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8238_full -> Patchwork_17183_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17183_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17183_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17183_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-glk7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
    - shard-skl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-skl5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_gtt@hang:
    - shard-iclb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb1/igt@gem_mmap_gtt@hang.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-iclb5/igt@gem_mmap_gtt@hang.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_wait@wait@rcs0}:
    - shard-skl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl2/igt@gem_wait@wait@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-skl5/igt@gem_wait@wait@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17183_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_cs_tlb@vcs1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb4/igt@gem_cs_tlb@vcs1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-iclb6/igt@gem_cs_tlb@vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#1528])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-apl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][15] -> [DMESG-FAIL][16] ([i915#1314])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-tglb7/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-tglb8/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl6/igt@i915_suspend@debugfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-kbl3/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#52] / [i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#34])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-glk9/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#198])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#1559] / [i915#93] / [i915#95])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-kbl6/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#1559] / [i915#95])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl2/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-apl8/igt@kms_plane_cursor@pipe-a-overlay-size-128.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_busy@before-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb1/igt@prime_busy@before-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-iclb7/igt@prime_busy@before-bsd2.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-hsw:          [FAIL][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-hsw2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-hsw6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [FAIL][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl1/igt@gem_tiled_swapping@non-threaded.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-apl3/igt@gem_tiled_swapping@non-threaded.html
    - shard-kbl:          [FAIL][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@gem_tiled_swapping@non-threaded.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-kbl3/igt@gem_tiled_swapping@non-threaded.html

  * {igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt}:
    - shard-snb:          [DMESG-WARN][47] ([i915#478]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
    - shard-hsw:          [DMESG-WARN][49] ([i915#478]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-hsw4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][55] ([i915#34]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][57] ([i915#221]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl1/igt@kms_flip@flip-vs-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-skl2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][63] ([fdo#109642] / [fdo#111068]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-snb:          [INCOMPLETE][69] ([i915#82]) -> [SKIP][70] ([fdo#109271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb4/igt@i915_pm_rpm@dpms-non-lpsp.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/shard-snb1/igt@i915_pm_rpm@dpms-non-lpsp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1314]: https://gitlab.freedesktop.org/drm/intel/issues/1314
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
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
  * Linux: CI_DRM_8238 -> Patchwork_17183

  CI-20190529: 20190529
  CI_DRM_8238: 840f70602a47208a2f1e444ba276f412f10e38df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5558: 3b55a816300d80bc5e0b995cd41ee8c8649a1ea2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17183: edcfb0ee5b6fc0c7934fd91de8f0f520c8b58941 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17183/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
