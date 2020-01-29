Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 789CA14C47D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 03:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7CA6E191;
	Wed, 29 Jan 2020 02:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2775D894C0;
 Wed, 29 Jan 2020 02:00:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1FD5FA0118;
 Wed, 29 Jan 2020 02:00:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Jan 2020 02:00:54 -0000
Message-ID: <158026325412.5463.6776373963329272853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/8=5D_drm/i915/gt=3A_Expose_engine_proper?=
 =?utf-8?q?ties_via_sysfs?=
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

Series: series starting with [1/8] drm/i915/gt: Expose engine properties via sysfs
URL   : https://patchwork.freedesktop.org/series/72638/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7827_full -> Patchwork_16287_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16287_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16287_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16287_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw4/igt@gem_partial_pwrite_pread@write-uncached.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-hsw7/igt@gem_partial_pwrite_pread@write-uncached.html

  
Known issues
------------

  Here are the changes found in Patchwork_16287_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb7/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [PASS][9] -> [FAIL][10] ([i915#490])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-snb5/igt@gem_eio@in-flight-1us.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-snb2/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#82])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-snb1/igt@gem_eio@kms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb5/igt@gem_exec_schedule@preempt-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +23 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#151] / [i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([IGT#5])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-iclb:         [PASS][25] -> [INCOMPLETE][26] ([i915#140] / [i915#221])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb7/igt@kms_flip@flip-vs-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#34])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl4/igt@kms_flip@plain-flip-fb-recreate.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb4/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk6/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-glk7/igt@kms_setmode@basic.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#831])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [fdo#112080]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#110841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][43] ([i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl5/igt@gem_eio@in-flight-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-skl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +6 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +19 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][57] ([i915#447]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb7/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][59] ([i915#300]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][61] ([i915#221]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][67] ([fdo#109276] / [fdo#112080]) -> [FAIL][68] ([IGT#28])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc:
    - shard-apl:          [FAIL][69] ([i915#1045]) -> [DMESG-FAIL][70] ([i915#1045])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][71] ([i915#694]) -> [FAIL][72] ([i915#818])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw4/igt@gem_tiled_blits@normal.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][73] ([i915#553] / [i915#725]) -> [DMESG-FAIL][74] ([i915#725])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@i915_selftest@live_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/shard-hsw4/igt@i915_selftest@live_blt.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1045]: https://gitlab.freedesktop.org/drm/intel/issues/1045
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7827 -> Patchwork_16287

  CI-20190529: 20190529
  CI_DRM_7827: c8969aeacfff681c83a800e82b0f18a6ab3e77ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5389: 966c58649dee31bb5bf2fad92f75ffd365968b81 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16287: ee38c0c884e09522addb9b1878ca62a96410f046 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16287/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
