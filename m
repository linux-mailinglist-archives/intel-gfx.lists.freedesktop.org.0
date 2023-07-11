Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A25A574E556
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 05:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40A010E2F5;
	Tue, 11 Jul 2023 03:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A16810E2F1;
 Tue, 11 Jul 2023 03:31:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2A23AADF0;
 Tue, 11 Jul 2023 03:31:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1791931846150839564=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vidya Srinivas" <vidya.srinivas@intel.com>
Date: Tue, 11 Jul 2023 03:31:49 -0000
Message-ID: <168904630995.18665.3181225564443806791@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230711002529.9742-1-vidya.srinivas@intel.com>
In-Reply-To: <20230711002529.9742-1-vidya.srinivas@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Allow_panel_drrs_modes_to_have_differing_sync_polariti?=
 =?utf-8?q?es?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1791931846150839564==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Allow panel drrs modes to have differing sync polarities
URL   : https://patchwork.freedesktop.org/series/120484/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13366_full -> Patchwork_120484v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_120484v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_120484v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_120484v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1:
    - shard-glk:          [PASS][1] -> [ABORT][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html
    - shard-rkl:          NOTRUN -> [ABORT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [ABORT][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-vga-1:
    - shard-snb:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-vga-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-vga-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-vga-1:
    - shard-snb:          [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-vga-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-vga-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-1:
    - shard-apl:          [PASS][11] -> [ABORT][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-apl4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-apl3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][13] -> [ABORT][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2:
    - shard-rkl:          [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [ABORT][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-vga-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][20] -> [DMESG-WARN][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2:
    - shard-rkl:          [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3:
    - shard-dg2:          [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-vga-1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
    - {shard-dg1}:        NOTRUN -> [ABORT][27] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3:
    - {shard-dg1}:        NOTRUN -> [DMESG-WARN][28] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_120484v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][29] -> [FAIL][30] ([i915#7742])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_exec_balancer@hang:
    - shard-mtlp:         [PASS][31] -> [ABORT][32] ([i915#8104])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-6/igt@gem_exec_balancer@hang.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#2846])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [PASS][35] -> [FAIL][36] ([i915#2842]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#3281]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_schedule@deep@vcs1:
    - shard-mtlp:         [PASS][38] -> [FAIL][39] ([i915#8606])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-5/igt@gem_exec_schedule@deep@vcs1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-8/igt@gem_exec_schedule@deep@vcs1.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-mtlp:         [PASS][40] -> [FAIL][41] ([i915#6363]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-2/igt@gem_exec_whisper@basic-normal.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-1/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#4270])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglu:         NOTRUN -> [SKIP][43] ([fdo#109289]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-snb:          NOTRUN -> [SKIP][44] ([fdo#109271]) +125 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#2856])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-mtlp:         [PASS][46] -> [FAIL][47] ([i915#8691])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-rkl:          [PASS][48] -> [SKIP][49] ([i915#1937])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][50] -> [SKIP][51] ([i915#1397]) +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][52] -> [SKIP][53] ([i915#1397]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#5723])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][55] ([fdo#111615] / [i915#5286])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         [PASS][56] -> [FAIL][57] ([i915#3743])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#3886]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc:
    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#5354] / [i915#6095]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs_cc:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#3689] / [i915#5354] / [i915#6095])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([fdo#111615] / [i915#3689] / [i915#5354] / [i915#6095])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#6095])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-3/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition@pipe-a-dp-2:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4087] / [i915#7213]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-12/igt@kms_cdclk@mode-transition@pipe-a-dp-2.html

  * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#7828])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3555])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-5/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#7118]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-5/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#6944] / [i915#7116] / [i915#7118])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#2346])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3804])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-mtlp:         [PASS][71] -> [FAIL][72] ([i915#4767])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-8/igt@kms_fbcon_fbt@fbc-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-apl6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@dpms-vs-vblank-race@a-edp1:
    - shard-mtlp:         [PASS][74] -> [DMESG-WARN][75] ([i915#1982]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-2/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-1/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a3:
    - shard-dg2:          [PASS][76] -> [FAIL][77] ([fdo#103375] / [i915#6121]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-8/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend@b-vga1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][78] ([i915#8841])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb7/igt@kms_flip@flip-vs-suspend@b-vga1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([fdo#109280]) +5 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([fdo#110189]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#8708])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#1825])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][83] ([fdo#109271]) +53 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#3555])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#5176]) +7 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#5176]) +9 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#5235]) +5 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#5235]) +7 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-glk:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2437])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@kms_writeback@writeback-fb-id.html

  * igt@sysfs_heartbeat_interval@nopreempt@vcs1:
    - shard-mtlp:         [PASS][91] -> [FAIL][92] ([i915#6015])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-4/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-8/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html

  * igt@v3d/v3d_submit_csd@bad-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([fdo#109315] / [i915#2575]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@v3d/v3d_submit_csd@bad-perfmon.html

  * igt@v3d/v3d_submit_csd@multi-and-single-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#2575])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@v3d/v3d_submit_csd@multi-and-single-sync.html

  * igt@vc4/vc4_perfmon@create-single-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#2575])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@vc4/vc4_perfmon@create-single-perfmon.html

  
#### Possible fixes ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-tglu:         [ABORT][96] ([i915#8211] / [i915#8234]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-8/igt@gem_barrier_race@remote-request@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [FAIL][98] ([i915#6268]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [ABORT][100] ([i915#180]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-apl2/igt@gem_eio@in-flight-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@full-pulse:
    - shard-dg2:          [FAIL][102] ([i915#6032]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-6/igt@gem_exec_balancer@full-pulse.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-7/igt@gem_exec_balancer@full-pulse.html

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-tglu:         [TIMEOUT][104] ([i915#3778] / [i915#7941]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-8/igt@gem_exec_endless@dispatch@vcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][106] ([i915#2842]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          [FAIL][108] ([i915#2842]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-mtlp:         [FAIL][110] ([i915#6363]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-8/igt@gem_exec_whisper@basic-contexts.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-mtlp:         [TIMEOUT][112] ([i915#7392]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-4/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-8/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-dg2:          [FAIL][114] ([fdo#103375] / [i915#6121]) -> [PASS][115] +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-5/igt@gem_workarounds@suspend-resume-fd.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-12/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][116] ([i915#7061]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - {shard-dg1}:        [FAIL][118] ([i915#3591]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-tglu:         [FAIL][120] ([i915#7940]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-7/igt@i915_pm_rpm@basic-rte.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-6/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][122] ([i915#1397]) -> [PASS][123] +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress@smem0:
    - {shard-dg1}:        [FAIL][124] ([i915#7940]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg1-16/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-19/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html

  * igt@i915_pm_rpm@i2c:
    - shard-dg2:          [FAIL][126] ([i915#8717]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-2/igt@i915_pm_rpm@i2c.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-5/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - {shard-dg1}:        [SKIP][128] ([i915#1397]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@gt_mocs:
    - shard-mtlp:         [DMESG-FAIL][130] ([i915#7059]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-3/igt@i915_selftest@live@gt_mocs.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@slpc:
    - shard-mtlp:         [DMESG-WARN][132] ([i915#6367]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-3/igt@i915_selftest@live@slpc.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@mock@fence:
    - shard-snb:          [ABORT][134] -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-snb7/igt@i915_selftest@mock@fence.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb6/igt@i915_selftest@mock@fence.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][136] ([i915#5138]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         [FAIL][138] ([i915#3743]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][140] ([i915#2346]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg2:          [FAIL][142] ([i915#6880]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][144] ([i915#7484]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@stress-open-close@0-rcs0:
    - shard-glk:          [ABORT][146] ([i915#5213] / [i915#7941]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk3/igt@perf@stress-open-close@0-rcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@perf@stress-open-close@0-rcs0.html

  
#### Warnings ####

  * igt@kms_content_protection@mei_interface:
    - shard-dg2:          [SKIP][148] ([i915#7118]) -> [SKIP][149] ([i915#7118] / [i915#7162])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-1/igt@kms_content_protection@mei_interface.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-12/igt@kms_content_protection@mei_interface.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][150] ([i915#3955]) -> [SKIP][151] ([fdo#110189] / [i915#3955])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][152] ([fdo#109285] / [i915#4098]) -> [SKIP][153] ([fdo#109285])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [INCOMPLETE][154] ([i915#5493]) -> [CRASH][155] ([i915#7331])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@sysfs_preempt_timeout@timeout@vecs0:
    - shard-mtlp:         [TIMEOUT][156] ([i915#7947]) -> [ABORT][157] ([i915#8521])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-5/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6015]: https://gitlab.freedesktop.org/drm/intel/issues/6015
  [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6363]: https://gitlab.freedesktop.org/drm/intel/issues/6363
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7331]: https://gitlab.freedesktop.org/drm/intel/issues/7331
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
  [i915#7947]: https://gitlab.freedesktop.org/drm/intel/issues/7947
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8104]: https://gitlab.freedesktop.org/drm/intel/issues/8104
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8521]: https://gitlab.freedesktop.org/drm/intel/issues/8521
  [i915#8606]: https://gitlab.freedesktop.org/drm/intel/issues/8606
  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841


Build changes
-------------

  * Linux: CI_DRM_13366 -> Patchwork_120484v1

  CI-20190529: 20190529
  CI_DRM_13366: e547f03913976a1adcb823ed64d803284fdfa6a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7378: e78963553e05a2413cf735824517547b2bb19936 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_120484v1: e547f03913976a1adcb823ed64d803284fdfa6a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/index.html

--===============1791931846150839564==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Allow panel drrs modes to have differing sync polarities</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/120484/">https://patchwork.freedesktop.org/series/120484/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13366_full -&gt; Patchwork_120484v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_120484v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_120484v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_120484v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html">ABORT</a> +1 similar issue</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-vga-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-vga-1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-3.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-vga-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-vga-1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-apl4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-apl3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-1.html">ABORT</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">ABORT</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-vga-1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-vga-1.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">ABORT</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-3.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120484v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-6/igt@gem_exec_balancer@hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-5/igt@gem_exec_balancer@hang.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8104">i915#8104</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-5/igt@gem_exec_schedule@deep@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-8/igt@gem_exec_schedule@deep@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8606">i915#8606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-2/igt@gem_exec_whisper@basic-normal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-1/igt@gem_exec_whisper@basic-normal.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6363">i915#6363</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@gen7_exec_parse@basic-offset.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +125 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8691">i915#8691</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-3/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-a-dp-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-12/igt@kms_cdclk@mode-transition@pipe-a-dp-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7213">i915#7213</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-5/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-5/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-6/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-apl6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-2/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-1/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-8/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-vga1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb7/igt@kms_flip@flip-vs-suspend@b-vga1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-4/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-8/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6015">i915#6015</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@v3d/v3d_submit_csd@bad-perfmon.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@multi-and-single-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@v3d/v3d_submit_csd@multi-and-single-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-single-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@vc4/vc4_perfmon@create-single-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-8/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8234">i915#8234</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-apl2/igt@gem_eio@in-flight-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-apl6/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-pulse:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-6/igt@gem_exec_balancer@full-pulse.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6032">i915#6032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-7/igt@gem_exec_balancer@full-pulse.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-8/igt@gem_exec_endless@dispatch@vcs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7941">i915#7941</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-5/igt@gem_exec_endless@dispatch@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-8/igt@gem_exec_whisper@basic-contexts.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6363">i915#6363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-4/igt@gem_exec_whisper@basic-contexts-priority-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-8/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-5/igt@gem_workarounds@suspend-resume-fd.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-12/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7061">i915#7061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-tglu-7/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-tglu-6/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@smem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg1-16/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-19/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-2/igt@i915_pm_rpm@i2c.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8717">i915#8717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-5/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-3/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-3/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@fence:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-snb7/igt@i915_selftest@mock@fence.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-snb6/igt@i915_selftest@mock@fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close@0-rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-glk3/igt@perf@stress-open-close@0-rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7941">i915#7941</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-glk8/igt@perf@stress-open-close@0-rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-1/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-12/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7331">i915#7331</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/shard-mtlp-5/igt@sysfs_preempt_timeout@timeout@vecs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7947">i915#7947</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120484v1/shard-mtlp-2/igt@sysfs_preempt_timeout@timeout@vecs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8521">i915#8521</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13366 -&gt; Patchwork_120484v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13366: e547f03913976a1adcb823ed64d803284fdfa6a2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7378: e78963553e05a2413cf735824517547b2bb19936 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_120484v1: e547f03913976a1adcb823ed64d803284fdfa6a2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1791931846150839564==--
