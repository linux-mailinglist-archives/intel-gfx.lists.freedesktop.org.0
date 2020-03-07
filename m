Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C6F17CFA1
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 19:44:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF6C76E258;
	Sat,  7 Mar 2020 18:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FC9B6E041;
 Sat,  7 Mar 2020 18:44:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7679AA47DF;
 Sat,  7 Mar 2020 18:44:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 07 Mar 2020 18:44:43 -0000
Message-ID: <158360668345.20976.8886984377773173865@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306154647.3528345-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200306154647.3528345-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Close_race_between_cacheline=5Fretire_and_free?=
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

Series: drm/i915/gt: Close race between cacheline_retire and free
URL   : https://patchwork.freedesktop.org/series/74397/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8087_full -> Patchwork_16865_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16865_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16865_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16865_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> ([FAIL][3], [FAIL][4]) ([fdo#111930] / [i915#409])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-tglb2/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-tglb3/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [TIMEOUT][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][7], [FAIL][8]) ([fdo#111012] / [i915#92]) -> ([FAIL][9], [FAIL][10]) ([i915#92])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-kbl3/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-kbl2/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-kbl7/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-kbl1/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_userptr_blits@mmap-offset-invalidate-active@wc}:
    - shard-tglb:         NOTRUN -> [SKIP][11] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-tglb8/igt@gem_userptr_blits@mmap-offset-invalidate-active@wc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16865_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][12] -> [INCOMPLETE][13] ([fdo#103665])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-shared-gtt-bsd2:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#616])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-tglb2/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276] / [i915#677]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([i915#677])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109276]) +28 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#112146]) +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#118] / [i915#95])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-glk2/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-kbl3/igt@gem_workarounds@suspend-resume-context.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#413])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb2/igt@i915_pm_rps@reset.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#54])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#1188]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([fdo#108145]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#31])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl2/igt@kms_setmode@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl7/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][44] -> [FAIL][45] ([i915#31])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-kbl7/igt@kms_setmode@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-kbl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#112080]) +10 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@basic-sync-default:
    - shard-tglb:         [PASS][48] -> [INCOMPLETE][49] ([fdo#111930] / [i915#409])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-tglb7/igt@prime_vgem@basic-sync-default.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-tglb2/igt@prime_vgem@basic-sync-default.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][50] ([fdo#112080]) -> [PASS][51] +19 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_ringsize@active@bcs0}:
    - shard-skl:          [FAIL][52] -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl5/igt@gem_ctx_ringsize@active@bcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl5/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#110841]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][56] ([fdo#110854]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs0-contexts:
    - shard-kbl:          [INCOMPLETE][58] ([fdo#103665]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-kbl3/igt@gem_exec_parallel@vcs0-contexts.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-kbl6/igt@gem_exec_parallel@vcs0-contexts.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][60] ([i915#677]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][62] ([fdo#112146]) -> [PASS][63] +8 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-apl:          [INCOMPLETE][64] ([fdo#103927]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-apl7/igt@gem_exec_whisper@basic-contexts-forked.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-apl7/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-iclb:         [INCOMPLETE][66] ([i915#1394]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb8/igt@gem_exec_whisper@basic-fds-priority.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb8/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][68] ([i915#644]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][70] ([i915#716]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][72] ([i915#151] / [i915#69]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl2/igt@i915_pm_rpm@system-suspend-execbuf.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-iclb:         [FAIL][74] ([i915#370]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb2/igt@i915_pm_rps@min-max-config-loaded.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb7/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][76] ([i915#79]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][78] ([i915#79]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-apl8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][82] ([fdo#108145]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][84] ([fdo#108145] / [i915#265]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [DMESG-WARN][86] ([IGT#6]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-skl6/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-skl7/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][88] ([fdo#109441]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][90] ([fdo#109276]) -> [PASS][91] +20 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][92] ([i915#468]) -> [FAIL][93] ([i915#454])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-snb:          [INCOMPLETE][94] ([i915#82]) -> [SKIP][95] ([fdo#109271])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/shard-snb5/igt@i915_pm_rpm@system-suspend-execbuf.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/shard-snb4/igt@i915_pm_rpm@system-suspend-execbuf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#111930]: https://bugs.freedesktop.org/show_bug.cgi?id=111930
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1394]: https://gitlab.freedesktop.org/drm/intel/issues/1394
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#370]: https://gitlab.freedesktop.org/drm/intel/issues/370
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8087 -> Patchwork_16865

  CI-20190529: 20190529
  CI_DRM_8087: 2eecd3619f1f227c890414a0730a723f1c5a3a60 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16865: bdc6f49063104b1a5038deb2bc562c5bacdef941 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
