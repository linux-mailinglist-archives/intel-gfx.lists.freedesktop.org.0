Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA4B139015
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 12:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AF9E6E05D;
	Mon, 13 Jan 2020 11:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D79CF6E05C;
 Mon, 13 Jan 2020 11:28:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CEF37A0096;
 Mon, 13 Jan 2020 11:28:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 13 Jan 2020 11:28:36 -0000
Message-ID: <157891491684.25473.8597580635859183087@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109172816.999044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200109172816.999044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Start_chopping_up_?=
 =?utf-8?q?the_GPU_error_capture?=
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

Series: series starting with [CI,1/2] drm/i915: Start chopping up the GPU error capture
URL   : https://patchwork.freedesktop.org/series/71838/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7714_full -> Patchwork_16044_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16044_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16044_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16044_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_hangman@error-state-capture-bcs0:
    - shard-apl:          [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl3/igt@i915_hangman@error-state-capture-bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-apl1/igt@i915_hangman@error-state-capture-bcs0.html
    - shard-iclb:         [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb7/igt@i915_hangman@error-state-capture-bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb8/igt@i915_hangman@error-state-capture-bcs0.html

  * igt@i915_hangman@error-state-capture-rcs0:
    - shard-skl:          [PASS][5] -> [FAIL][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl10/igt@i915_hangman@error-state-capture-rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl5/igt@i915_hangman@error-state-capture-rcs0.html
    - shard-glk:          [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk6/igt@i915_hangman@error-state-capture-rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-glk9/igt@i915_hangman@error-state-capture-rcs0.html

  * igt@i915_hangman@error-state-capture-vcs0:
    - shard-hsw:          NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-hsw2/igt@i915_hangman@error-state-capture-vcs0.html
    - shard-kbl:          [PASS][10] -> [FAIL][11] +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl6/igt@i915_hangman@error-state-capture-vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-kbl1/igt@i915_hangman@error-state-capture-vcs0.html
    - shard-snb:          [PASS][12] -> [FAIL][13] +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb4/igt@i915_hangman@error-state-capture-vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-snb5/igt@i915_hangman@error-state-capture-vcs0.html

  * igt@i915_hangman@error-state-capture-vecs0:
    - shard-hsw:          [PASS][14] -> [FAIL][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-hsw2/igt@i915_hangman@error-state-capture-vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-hsw7/igt@i915_hangman@error-state-capture-vecs0.html

  
#### Warnings ####

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [SKIP][16] ([fdo#112080]) -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@i915_hangman@error-state-capture-vcs1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb4/igt@i915_hangman@error-state-capture-vcs1.html

  
Known issues
------------

  Here are the changes found in Patchwork_16044_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][18] -> [INCOMPLETE][19] ([fdo#103665])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-kbl1/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#679])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk2/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-glk2/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [PASS][22] -> [FAIL][23] ([i915#490])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb1/igt@gem_eio@in-flight-1us.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-snb4/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][24] -> [INCOMPLETE][25] ([i915#82])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb2/igt@gem_eio@kms.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-snb4/igt@gem_eio@kms.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#112080]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([i915#677])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109276]) +7 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb3/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#112146])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#644])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][38] -> [DMESG-WARN][39] ([i915#716])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@i2c:
    - shard-iclb:         [PASS][40] -> [INCOMPLETE][41] ([i915#140] / [i915#189])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@i915_pm_rpm@i2c.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb2/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#413])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@i915_pm_rps@reset.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#407])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-glk1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#34])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl10/igt@kms_flip@plain-flip-fb-recreate.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#699])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl10/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([fdo#108145])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_eio@wait-10ms:
    - shard-skl:          [FAIL][54] -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl5/igt@gem_eio@wait-10ms.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl2/igt@gem_eio@wait-10ms.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [SKIP][56] ([fdo#109276]) -> [PASS][57] +8 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][58] ([i915#677]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][60] ([fdo#112146]) -> [PASS][61] +5 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_linear_blits@interruptible:
    - shard-glk:          [DMESG-WARN][62] ([i915#667]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk3/igt@gem_linear_blits@interruptible.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-glk6/igt@gem_linear_blits@interruptible.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@i915_selftest@live_active:
    - shard-skl:          [DMESG-FAIL][66] ([i915#666]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl3/igt@i915_selftest@live_active.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl4/igt@i915_selftest@live_active.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][68] ([i915#109]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl5/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][70] ([i915#54]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][72] ([i915#79]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl6/igt@kms_flip@flip-vs-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-kbl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][76] ([fdo#108145] / [i915#265]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@kms_psr@psr2_primary_render.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][80] ([fdo#112080]) -> [PASS][81] +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-skl:          [TIMEOUT][82] ([fdo#111732]) -> [TIMEOUT][83] ([fdo#111732] / [fdo#112271])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-skl6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-snb:          [SKIP][84] ([CI#80] / [fdo#109271]) -> [SKIP][85] ([fdo#109271])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/shard-snb1/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7714 -> Patchwork_16044

  CI-20190529: 20190529
  CI_DRM_7714: b633f28f2de80cdb861d6c1c3b4df6fd2d53239f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16044: 7241249bd895f7bd8696e7bc489a9ea36a905c29 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16044/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
