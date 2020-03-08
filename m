Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7B17D10E
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Mar 2020 04:32:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A746E1F2;
	Sun,  8 Mar 2020 03:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C89E86E1C0;
 Sun,  8 Mar 2020 03:32:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFDF5A011C;
 Sun,  8 Mar 2020 03:32:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sun, 08 Mar 2020 03:32:32 -0000
Message-ID: <158363835275.32727.14976842423641680721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305202435.1284242-1-matthew.d.roper@intel.com>
In-Reply-To: <20200305202435.1284242-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Don=27t_treat_unslice_registers_as_masked_=28rev3?=
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

Series: drm/i915/tgl: Don't treat unslice registers as masked (rev3)
URL   : https://patchwork.freedesktop.org/series/74351/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8090_full -> Patchwork_16875_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16875_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16875_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16875_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-tglb3/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [TIMEOUT][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16875_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#112080]) +7 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-apl2/igt@gem_ctx_isolation@vecs0-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-apl6/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#110841])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#110854])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb7/igt@gem_exec_schedule@deep-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb4/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276] / [i915#677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][16] -> [FAIL][17] ([i915#644])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#716])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#716])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#413])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb4/igt@i915_pm_rps@reset.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#54])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#72])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#79])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#34])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#53])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-skl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-skl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][36] -> [INCOMPLETE][37] ([fdo#103665])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([fdo#108145]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][40] -> [FAIL][41] ([i915#899])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109276]) +13 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][46] ([fdo#103927]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][48] ([fdo#112080]) -> [PASS][49] +13 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][50] ([fdo#109276] / [i915#677]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][52] ([fdo#112146]) -> [PASS][53] +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][54] ([fdo#109276]) -> [PASS][55] +13 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][56] ([i915#677]) -> [PASS][57] +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][60] ([i915#644]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][62] ([i915#180]) -> [PASS][63] +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][64] ([i915#454]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-iclb:         [FAIL][66] ([i915#370]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb6/igt@i915_pm_rps@min-max-config-loaded.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb5/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][68] ([i915#72]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-kbl:          [FAIL][70] ([i915#34]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-kbl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][72] ([i915#1188]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][74] ([fdo#108145]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][76] ([fdo#108145] / [i915#265]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][80] ([i915#658]) -> [SKIP][81] ([i915#588])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8090/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#370]: https://gitlab.freedesktop.org/drm/intel/issues/370
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8090 -> Patchwork_16875

  CI-20190529: 20190529
  CI_DRM_8090: efe3db8ec3786a6bcc0c9a124290d6ad2feff0dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16875: fd316919c734883f7aa9afc51df51b53e2980623 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16875/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
