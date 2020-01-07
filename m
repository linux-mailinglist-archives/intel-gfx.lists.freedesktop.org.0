Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A93711328B2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 15:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3339F89F63;
	Tue,  7 Jan 2020 14:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F415689E69;
 Tue,  7 Jan 2020 14:20:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E97F4A47E0;
 Tue,  7 Jan 2020 14:20:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jan 2020 14:20:26 -0000
Message-ID: <157840682692.8942.965253756886872293@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106234703.645168-1-matthew.auld@intel.com>
In-Reply-To: <20200106234703.645168-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gtt=3A_split_up_i915=5Fgem=5Fgtt?=
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

Series: drm/i915/gtt: split up i915_gem_gtt
URL   : https://patchwork.freedesktop.org/series/71678/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7690_full -> Patchwork_16010_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16010_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16010_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16010_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@close-race:
    - shard-hsw:          NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-hsw7/igt@gem_busy@close-race.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-tglb:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb3/igt@i915_hangman@error-state-capture-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb4/igt@i915_hangman@error-state-capture-vcs1.html

  
Known issues
------------

  Here are the changes found in Patchwork_16010_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [PASS][4] -> [DMESG-WARN][5] ([fdo#111764])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb5/igt@gem_ctx_isolation@rcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#69])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl6/igt@gem_ctx_isolation@vecs0-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-skl6/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111735])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112080]) +13 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([i915#677])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111606] / [fdo#111677] / [i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#435] / [i915#472]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb2/igt@gem_sync@basic-store-each.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb7/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@live_execlists:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#647])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb2/igt@i915_selftest@live_execlists.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb3/igt@i915_selftest@live_execlists.html
    - shard-skl:          [PASS][26] -> [DMESG-FAIL][27] ([i915#656])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl10/igt@i915_selftest@live_execlists.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-skl3/igt@i915_selftest@live_execlists.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#109]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl8/igt@kms_color@pipe-b-ctm-negative.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][32] -> [INCOMPLETE][33] ([i915#221])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-skl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][34] -> [DMESG-WARN][35] ([i915#42])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#49]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][38] -> [INCOMPLETE][39] ([i915#123] / [i915#69])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@enable-race-vecs0:
    - shard-tglb:         [PASS][42] -> [INCOMPLETE][43] ([i915#470] / [i915#472])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb3/igt@perf_pmu@enable-race-vecs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb3/igt@perf_pmu@enable-race-vecs0.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109276]) +26 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][46] ([fdo#112080]) -> [PASS][47] +11 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][48] ([fdo#109276] / [fdo#112080]) -> [PASS][49] +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb7/igt@gem_ctx_isolation@vcs1-none.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][50] ([fdo#110841]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][52] ([i915#461]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@in-flight-10ms:
    - shard-tglb:         [INCOMPLETE][54] ([i915#435] / [i915#534]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb1/igt@gem_eio@in-flight-10ms.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb5/igt@gem_eio@in-flight-10ms.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][56] ([i915#470]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb6/igt@gem_exec_parallel@fds.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb7/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][58] ([i915#677]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][60] ([fdo#112146]) -> [PASS][61] +8 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [INCOMPLETE][62] ([fdo#111606] / [fdo#111677]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb9/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [TIMEOUT][64] ([fdo#112126] / [i915#530]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][66] ([i915#644]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][68] ([i915#69]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl10/igt@gem_softpin@noreloc-s3.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][70] ([i915#716]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][72] ([IGT#5]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [DMESG-WARN][74] ([i915#109]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][76] ([i915#49]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][78] ([fdo#108145] / [i915#265]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][80] ([fdo#109441]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][82] ([i915#31]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-apl2/igt@kms_setmode@basic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-apl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +5 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][86] ([fdo#109276]) -> [PASS][87] +27 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][88] ([IGT#28]) -> [SKIP][89] ([fdo#109276] / [fdo#112080])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][90] ([fdo#109276] / [fdo#112080]) -> [FAIL][91] ([IGT#28])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][92] ([fdo#108838] / [i915#435]) -> [INCOMPLETE][93] ([fdo#108838] / [i915#435] / [i915#472])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb6/igt@gem_exec_create@forked.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb7/igt@gem_exec_create@forked.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [INCOMPLETE][94] ([i915#435]) -> [INCOMPLETE][95] ([i915#435] / [i915#472]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb2/igt@gem_exec_whisper@normal.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb8/igt@gem_exec_whisper@normal.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][96] ([i915#832]) -> [FAIL][97] ([i915#694])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-hsw7/igt@gem_tiled_blits@normal.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][98] ([i915#468]) -> [FAIL][99] ([i915#454])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][100] ([fdo#112021]) -> [SKIP][101] ([fdo#112016] / [fdo#112021])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb1/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-tglb:         [INCOMPLETE][102] ([i915#756] / [i915#923]) -> [INCOMPLETE][103] ([i915#472] / [i915#756]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb3/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/shard-tglb7/igt@perf@gen12-unprivileged-single-ctx-counters.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#756]: https://gitlab.freedesktop.org/drm/intel/issues/756
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#923]: https://gitlab.freedesktop.org/drm/intel/issues/923


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7690 -> Patchwork_16010

  CI-20190529: 20190529
  CI_DRM_7690: fc0ff49196d0144e8b72406a8ca71a395dbd7040 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16010: f96decd69a0ee1bf6a884ff946ff1dbcf0df44f0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16010/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
