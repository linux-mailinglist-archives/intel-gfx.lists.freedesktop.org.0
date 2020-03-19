Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C653618C34B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 23:50:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DE046EA99;
	Thu, 19 Mar 2020 22:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E32A26EA99;
 Thu, 19 Mar 2020 22:50:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9037A00CC;
 Thu, 19 Mar 2020 22:50:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 19 Mar 2020 22:50:41 -0000
Message-ID: <158465824172.17932.13128152877406277636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318235956.118409-1-jose.souza@intel.com>
In-Reply-To: <20200318235956.118409-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/tc/tgl=3A_Implement_TCCOLD?=
 =?utf-8?q?_sequences_=28rev2=29?=
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

Series: series starting with [1/6] drm/i915/tc/tgl: Implement TCCOLD sequences (rev2)
URL   : https://patchwork.freedesktop.org/series/74851/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8160_full -> Patchwork_17027_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17027_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17027_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17027_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-tglb6/igt@kms_hdr@static-toggle-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_17027_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][2] -> [INCOMPLETE][3] ([i915#1402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5] ([i915#1402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#110841])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112080]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276] / [i915#677]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +5 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#677]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +5 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb3/igt@gem_exec_schedule@wide-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][18] -> [FAIL][19] ([i915#96])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([IGT#5] / [i915#697])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-glk3/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#79])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#49])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#1188])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl6/igt@kms_hdr@bpc-switch.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([fdo#108145] / [i915#265])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109441]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][36] ([fdo#112080]) -> [PASS][37] +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb3/igt@gem_busy@extended-parallel-vcs1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][38] ([i915#1402]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][40] ([fdo#103927] / [i915#1402]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-iclb:         [FAIL][42] ([i915#679]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb2/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-iclb:         [INCOMPLETE][44] ([i915#1239]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-tglb:         [FAIL][46] ([i915#679]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-tglb:         [INCOMPLETE][48] ([i915#1239]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][50] ([fdo#109276] / [i915#677]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-iclb:         [SKIP][52] ([fdo#109276]) -> [PASS][53] +10 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb5/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb2/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57] +5 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-kbl6/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-tglb:         [INCOMPLETE][58] ([i915#1318] / [i915#1401]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb1/igt@gem_exec_whisper@basic-fds-forked.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-tglb6/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][60] ([i915#644]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][62] ([i915#447]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][64] ([i915#46]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][66] ([i915#34]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][68] ([i915#1188]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][72] ([fdo#108145]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][74] ([fdo#108145] / [i915#265]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][76] ([fdo#109642] / [fdo#111068]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][80] ([i915#31]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl1/igt@kms_setmode@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-apl3/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][82] ([i915#31]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl10/igt@kms_setmode@basic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl9/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][84] ([i915#69]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][86] ([i915#92]) -> ([FAIL][87], [FAIL][88]) ([i915#1389] / [i915#1402] / [i915#92])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl6/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-kbl4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][89], [FAIL][90]) ([fdo#103927] / [i915#1402]) -> [FAIL][91] ([fdo#103927])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl4/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl1/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-apl8/igt@runner@aborted.html
    - shard-tglb:         [FAIL][92] ([i915#1318]) -> [FAIL][93] ([i915#1389])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb1/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/shard-tglb3/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8160 -> Patchwork_17027

  CI-20190529: 20190529
  CI_DRM_8160: 6ba1729e5025761ab74914f6b8aa3288f493e9c7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5523: cf6d524007ac51a7d5a48503ea3dd5f01fd4ebab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17027: 4f6235744a939c05913c4cb014945655ea1d82f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
