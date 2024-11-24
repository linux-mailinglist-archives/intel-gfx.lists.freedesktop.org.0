Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 235E29D6D38
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Nov 2024 10:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 557E610E085;
	Sun, 24 Nov 2024 09:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3BE10E085;
 Sun, 24 Nov 2024 09:29:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5995949464805545717=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/dsb=3A_Try_to_f?=
 =?utf-8?q?ix_CPU_MMIO_fails_during_legacy_LUT_updates_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Nov 2024 09:29:07 -0000
Message-ID: <173244054765.2400440.7274299078152763442@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241120164123.12706-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241120164123.12706-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5995949464805545717==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsb: Try to fix CPU MMIO fails during legacy LUT updates (rev3)
URL   : https://patchwork.freedesktop.org/series/141613/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15725_full -> Patchwork_141613v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141613v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141613v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141613v3_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-dg2:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23]) -> ([PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [FAIL][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-10/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-10/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-1/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/boot.html
    - shard-dg1:          ([PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65]) -> ([PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [FAIL][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-12/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-12/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-12/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-12/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-14/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-14/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-14/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-14/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-17/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-17/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-17/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-17/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-18/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-18/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-18/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@core_setmaster@master-drop-set-user:
    - shard-dg2:          [PASS][85] -> [FAIL][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@core_setmaster@master-drop-set-user.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@core_setmaster@master-drop-set-user.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][87]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-mtlp:         ([PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93]) -> [ABORT][94]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_eio@in-flight-contexts-immediate.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@gem_eio@in-flight-contexts-immediate.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@gem_eio@in-flight-contexts-immediate.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_eio@in-flight-contexts-immediate.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@gem_eio@in-flight-contexts-immediate.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-tglu:         [PASS][95] -> [FAIL][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-6/igt@gem_tiled_swapping@non-threaded.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-3/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [PASS][97] -> [DMESG-WARN][98] +5 other tests dmesg-warn
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-3/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_module_load@reload-no-display:
    - shard-tglu-1:       NOTRUN -> [ABORT][99]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_rpm@reg-read-ioctl:
    - shard-dg2:          [PASS][100] -> [SKIP][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@i915_pm_rpm@reg-read-ioctl.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@i915_pm_rpm@reg-read-ioctl.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][102] +2 other tests dmesg-warn
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-5/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-b-hdmi-a-2.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][103] +4 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][104]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_vblank@query-busy-hang:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][105] +1 other test incomplete
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/igt@kms_vblank@query-busy-hang.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - {shard-dg2-9}:      NOTRUN -> [SKIP][106] +2 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  
Known issues
------------

  Here are the changes found in Patchwork_141613v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_getversion@basic:
    - shard-dg2:          NOTRUN -> [FAIL][107] ([i915#12866])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@core_getversion@basic.html

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#11078])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#8414]) +25 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#8414]) +7 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#12506]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#3281]) +12 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#3555] / [i915#9323])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#3555] / [i915#9323])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#9323])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#9323])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][117] -> [INCOMPLETE][118] ([i915#7297])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#7697])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#7697])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#8562])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@execute-allforone:
    - shard-dg2:          [PASS][122] -> [SKIP][123] ([i915#2575]) +51 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_ctx_engines@execute-allforone.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_ctx_engines@execute-allforone.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#8555]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu-1:       NOTRUN -> [FAIL][125] ([i915#11980] / [i915#12580])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_ctx_persistence@hostile.html
    - shard-dg1:          NOTRUN -> [FAIL][126] ([i915#11980] / [i915#12580])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#280])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#280]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#4812]) +3 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4036])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu-1:       NOTRUN -> [FAIL][131] ([i915#6117])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#6334]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4812])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3539])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#3539] / [i915#4852]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3281]) +5 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#4860])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4860])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#4613]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#12936])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-dg2:          [PASS][141] -> [SKIP][142] ([i915#12936])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_lmem_swapping@parallel-random-verify.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          NOTRUN -> [TIMEOUT][143] ([i915#5493]) +1 other test timeout
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#4613]) +2 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#12193]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#4565]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#284])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#4077]) +3 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#4083]) +6 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#3282]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pwrite@basic-random:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3282])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#4270])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#12975])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#4270]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#2575] / [i915#5190])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#5190] / [i915#8428]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#8428])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-3/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#4079]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#4079])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#4077]) +10 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#3297]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#3297] / [i915#4880])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#3297]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#2527] / [i915#2856]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gen9_exec_parse@shadow-peek.html
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#2527]) +2 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#2527] / [i915#2856])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gen9_exec_parse@unaligned-jump.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#2856])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_fb_tiling:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#4881])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][169] -> [ABORT][170] ([i915#9820])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][171] -> [ABORT][172] ([i915#9820])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#11681] / [i915#6621])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#11681] / [i915#6621])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#4387])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#6188])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#5723])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock:
    - shard-glk:          NOTRUN -> [DMESG-WARN][178] ([i915#9311]) +1 other test dmesg-warn
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-glk3/igt@i915_selftest@mock.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#4212]) +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#8709]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#9531])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-dg2:          [PASS][182] -> [FAIL][183] ([i915#5956])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [FAIL][184] ([i915#5956])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#5286]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
    - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#5286])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#4538] / [i915#5286]) +5 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#5286]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#5286])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#3638])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#5190]) +3 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#4538] / [i915#5190]) +4 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#4538]) +6 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][194]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][195] +41 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#6095]) +29 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_ccs@crc-primary-basic-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#12313]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#6095]) +39 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#6095]) +15 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#10307] / [i915#6095]) +114 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#12313]) +3 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#6095]) +141 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#6095]) +60 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#11616] / [i915#7213]) +3 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#4087]) +4 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-dp-4.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-dg1:          NOTRUN -> [SKIP][207] +46 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_edid@dp-edid-resolution-list:
    - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#7828]) +3 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_chamelium_edid@dp-edid-resolution-list.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#7828]) +10 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#7828]) +3 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#7828]) +3 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#7828])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#3116] / [i915#3299])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-3/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#6944] / [i915#7116] / [i915#7118])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-tglu-1:       NOTRUN -> [SKIP][215] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#12976])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-tglu-1:       NOTRUN -> [SKIP][217] ([i915#3555]) +2 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#3555]) +7 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#12976])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#3555]) +2 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#3555])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#12976]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu-1:       NOTRUN -> [SKIP][223] ([i915#4103]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#4103] / [i915#4213])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#4103])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-snb:          [PASS][226] -> [FAIL][227] ([i915#2346])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
    - shard-mtlp:         ([PASS][228], [PASS][229], [PASS][230], [PASS][231]) -> [FAIL][232] ([i915#2346])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#9723])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8827])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#8588])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#8812])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#3555] / [i915#3840])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#3555] / [i915#3840])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#3555] / [i915#3840])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#3469])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#3469])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#1839])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#658])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#3637])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#3637]) +1 other test skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu-1:       NOTRUN -> [SKIP][246] ([i915#3637]) +5 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#9934]) +9 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:
    - shard-rkl:          [PASS][248] -> [FAIL][249] ([i915#11989])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#8381])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@flip-vs-fences-interruptible@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][251] ([i915#12964]) +9 other tests dmesg-warn
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-7/igt@kms_flip@flip-vs-fences-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][252] ([i915#12964])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-7/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
    - shard-rkl:          [PASS][253] -> [FAIL][254] ([i915#2122])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [PASS][255] -> [FAIL][256] ([i915#2122]) +3 other tests fail
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-dp4:
    - shard-dg2:          NOTRUN -> [FAIL][257] ([i915#2122]) +3 other tests fail
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/igt@kms_flip@plain-flip-fb-recreate@c-dp4.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][258] ([i915#2672] / [i915#3555])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#2587] / [i915#2672])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#2672]) +4 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#2672] / [i915#3555]) +1 other test skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][263] ([i915#2587] / [i915#2672]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#2672] / [i915#3555]) +4 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#2587] / [i915#2672]) +4 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [PASS][266] -> [FAIL][267] ([i915#6880])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][268] +35 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#1825])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#5354]) +9 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [PASS][271] -> [SKIP][272] +4 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
    - shard-dg2:          [PASS][273] -> [SKIP][274] +10 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][275] ([i915#5439])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#8708]) +3 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#1825])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu-1:       NOTRUN -> [SKIP][278] ([i915#9766])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
    - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#9766])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#3458]) +5 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][281] +32 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
    - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#8708]) +18 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][283] ([i915#3458]) +14 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][284] ([i915#1187] / [i915#12713])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][285] ([i915#3555] / [i915#8228]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][286] ([i915#3555] / [i915#8228]) +1 other test skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#12339]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][288] ([i915#12388])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][289] ([i915#6301])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html
    - shard-dg1:          NOTRUN -> [SKIP][290] ([i915#6301])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@plane-position-hole:
    - shard-dg1:          [PASS][291] -> [DMESG-WARN][292] ([i915#4423])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-18/igt@kms_plane@plane-position-hole.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][293] ([i915#12247]) +4 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#2575] / [i915#9423]) +1 other test skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][295] ([i915#12247] / [i915#6953])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
    - shard-dg1:          NOTRUN -> [SKIP][296] ([i915#12247]) +13 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-tglu-1:       NOTRUN -> [SKIP][297] ([i915#12247]) +3 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          [PASS][298] -> [SKIP][299] ([i915#2575] / [i915#9423]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#12247] / [i915#6953] / [i915#9423])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#12247]) +3 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#9812])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#5354])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][304] ([i915#9685])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-dg1:          NOTRUN -> [SKIP][305] ([i915#3828])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [PASS][306] -> [SKIP][307] ([i915#9340])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html
    - shard-tglu-1:       NOTRUN -> [SKIP][308] ([i915#3828])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu-1:       NOTRUN -> [SKIP][309] ([i915#8430])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html
    - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#8430])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#9519])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          NOTRUN -> [FAIL][312] ([i915#8717])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][313] -> [SKIP][314] ([i915#9519]) +1 other test skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#6524] / [i915#6805])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-tglu-1:       NOTRUN -> [SKIP][316] ([i915#6524])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#11520]) +2 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][318] ([i915#11520]) +3 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
    - shard-tglu-1:       NOTRUN -> [SKIP][319] ([i915#11520]) +4 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#11520]) +9 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][321] ([i915#9683]) +1 other test skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr-primary-render:
    - shard-tglu:         NOTRUN -> [SKIP][322] ([i915#9732]) +11 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_psr@psr-primary-render.html

  * igt@kms_psr@psr2-primary-page-flip:
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#1072] / [i915#9732]) +4 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_psr@psr2-primary-page-flip.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][324] ([i915#9732]) +7 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html
    - shard-dg1:          NOTRUN -> [SKIP][325] ([i915#1072] / [i915#9732]) +20 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][326] ([i915#9685])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg1:          NOTRUN -> [SKIP][327] ([i915#5289]) +2 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][328] ([i915#12755])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg1:          NOTRUN -> [SKIP][329] ([i915#8623]) +1 other test skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][330] ([i915#2575]) +76 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_vblank@ts-continuation-modeset.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][331] ([i915#9906])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][332] ([i915#3555] / [i915#9906])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2:          NOTRUN -> [SKIP][333] ([i915#9906])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][334] ([i915#2437] / [i915#9412])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglu-1:       NOTRUN -> [SKIP][335] ([i915#2437])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-dg1:          NOTRUN -> [SKIP][336] ([i915#2437])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][337] ([i915#2436])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@all-busy-check-all:
    - shard-dg2:          [PASS][338] -> [SKIP][339] ([i915#12506]) +2 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@perf_pmu@all-busy-check-all.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@perf_pmu@all-busy-check-all.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-dg1:          NOTRUN -> [SKIP][340] ([i915#8850])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_udl:
    - shard-rkl:          NOTRUN -> [SKIP][341]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg1:          NOTRUN -> [SKIP][342] ([i915#3708])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@prime_vgem@basic-fence-flip.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg1:          NOTRUN -> [SKIP][343] ([i915#9917])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-tglu:         NOTRUN -> [FAIL][344] ([i915#12564] / [i915#9781])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - shard-dg2:          [SKIP][345] ([i915#2582]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@fbdev@eof.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@fbdev@eof.html

  * igt@gem_eio@wait-wedge-1us:
    - shard-mtlp:         ([PASS][347], [ABORT][348], [PASS][349], [PASS][350], [PASS][351], [PASS][352], [PASS][353]) -> [PASS][354]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@gem_eio@wait-wedge-1us.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@gem_eio@wait-wedge-1us.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@gem_eio@wait-wedge-1us.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@gem_eio@wait-wedge-1us.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@gem_eio@wait-wedge-1us.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_eio@wait-wedge-1us.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_eio@wait-wedge-1us.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@gem_eio@wait-wedge-1us.html

  * igt@gem_exec_fence@syncobj-repeat:
    - shard-rkl:          [DMESG-WARN][355] -> [PASS][356] +2 other tests pass
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-3/igt@gem_exec_fence@syncobj-repeat.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-1/igt@gem_exec_fence@syncobj-repeat.html

  * igt@gem_exec_gttfill@engines@rcs0:
    - shard-mtlp:         ([INCOMPLETE][357], [INCOMPLETE][358]) -> [PASS][359]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_exec_gttfill@engines@rcs0.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_exec_gttfill@engines@rcs0.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@gem_exec_gttfill@engines@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg1:          [ABORT][360] ([i915#7975] / [i915#8213]) -> [PASS][361] +1 other test pass
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_linear_blits@interruptible:
    - shard-dg2:          [INCOMPLETE][362] -> [PASS][363]
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-2/igt@gem_linear_blits@interruptible.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/igt@gem_linear_blits@interruptible.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-dg2:          [SKIP][364] ([i915#12936]) -> [PASS][365]
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_lmem_swapping@random-engines.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         ([PASS][366], [ABORT][367], [ABORT][368]) ([i915#10729]) -> [PASS][369] +1 other test pass
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@gem_mmap_offset@clear.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_mmap_offset@clear.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_mmap_offset@clear.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-2/igt@gem_mmap_offset@clear.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][370] ([i915#12455]) -> [PASS][371] +1 other test pass
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_power@sanity:
    - shard-mtlp:         ([PASS][372], [PASS][373], [PASS][374], [PASS][375], [SKIP][376], [PASS][377]) ([i915#7984]) -> [PASS][378]
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@i915_power@sanity.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@i915_power@sanity.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@i915_power@sanity.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@i915_power@sanity.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@i915_power@sanity.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@i915_power@sanity.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-8/igt@i915_power@sanity.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         ([ABORT][379], [ABORT][380], [PASS][381], [ABORT][382], [ABORT][383]) ([i915#12061]) -> [PASS][384] +1 other test pass
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@i915_selftest@live@workarounds.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         ([PASS][385], [DMESG-FAIL][386], [PASS][387], [PASS][388], [PASS][389]) ([i915#11627]) -> [PASS][390]
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         ([PASS][391], [DMESG-FAIL][392], [PASS][393], [PASS][394], [PASS][395], [PASS][396]) ([i915#11627]) -> [PASS][397]
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_busy@basic-hang@modeset-pipe-a:
    - shard-rkl:          [DMESG-WARN][398] ([i915#12964]) -> [PASS][399] +2 other tests pass
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-7/igt@kms_busy@basic-hang@modeset-pipe-a.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-5/igt@kms_busy@basic-hang@modeset-pipe-a.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
    - shard-dg2:          [SKIP][400] -> [PASS][401] +1 other test pass
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][402] ([i915#3555]) -> [PASS][403]
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-3/igt@kms_color@deep-color.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/igt@kms_color@deep-color.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          [FAIL][404] ([i915#2346]) -> [PASS][405]
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
    - shard-snb:          [FAIL][406] ([i915#2122]) -> [PASS][407] +5 other tests pass
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-snb1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
    - shard-glk:          [FAIL][408] ([i915#2122]) -> [PASS][409] +3 other tests pass
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-glk3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-dg1:          [FAIL][410] ([i915#12517] / [i915#12996] / [i915#2122]) -> [PASS][411]
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3:
    - shard-dg1:          [FAIL][412] ([i915#12517]) -> [PASS][413] +2 other tests pass
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-tglu:         [FAIL][414] ([i915#2122]) -> [PASS][415] +7 other tests pass
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-8/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-mtlp:         ([FAIL][416], [FAIL][417], [FAIL][418], [FAIL][419], [PASS][420]) ([i915#11989] / [i915#2122]) -> [PASS][421]
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1:
    - shard-mtlp:         ([PASS][422], [FAIL][423], [FAIL][424], [FAIL][425], [FAIL][426]) ([i915#2122]) -> [PASS][427]
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-tglu:         [FAIL][428] ([i915#10826]) -> [PASS][429]
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:
    - shard-mtlp:         ([PASS][430], [FAIL][431], [PASS][432], [FAIL][433], [PASS][434], [PASS][435]) ([i915#2122]) -> [PASS][436] +1 other test pass
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         [FAIL][437] -> [PASS][438]
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_getfb@getfb-handle-closed:
    - shard-dg2:          [SKIP][439] ([i915#2575]) -> [PASS][440] +45 other tests pass
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_getfb@getfb-handle-closed.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@kms_getfb@getfb-handle-closed.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          [SKIP][441] ([i915#2575] / [i915#9423]) -> [PASS][442] +1 other test pass
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][443] ([i915#9519]) -> [PASS][444] +2 other tests pass
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-rkl:          [FAIL][445] ([i915#10538]) -> [PASS][446]
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-2/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-1/igt@perf@gen12-group-concurrent-oa-buffer-read.html
    - shard-mtlp:         ([PASS][447], [PASS][448], [PASS][449], [PASS][450], [FAIL][451]) ([i915#10538]) -> [PASS][452]
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-6/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-dg2:          [SKIP][453] ([i915#12506]) -> [PASS][454]
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          [SKIP][455] ([i915#2575]) -> [SKIP][456] ([i915#8411])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-cache.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_fdinfo@busy-hang:
    - shard-dg2:          [SKIP][457] ([i915#8414]) -> [SKIP][458] ([i915#12506]) +1 other test skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@drm_fdinfo@busy-hang.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@drm_fdinfo@busy-hang.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2:          [SKIP][459] ([i915#8555]) -> [SKIP][460] ([i915#2575])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-close.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          [SKIP][461] ([i915#4812]) -> [SKIP][462] ([i915#2575])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_exec_balancer@bonded-semaphore.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          [SKIP][463] ([i915#2575]) -> [SKIP][464] ([i915#4771])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          [SKIP][465] ([i915#3539]) -> [SKIP][466] ([i915#2575])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_exec_flush@basic-uc-prw-default.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          [SKIP][467] ([i915#2575]) -> [SKIP][468] ([i915#3539])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_flush@basic-uc-set-default.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_reloc@basic-range-active:
    - shard-dg2:          [SKIP][469] ([i915#3281]) -> [SKIP][470] ([i915#2575])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_exec_reloc@basic-range-active.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_exec_reloc@basic-range-active.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-dg2:          [SKIP][471] ([i915#2575]) -> [SKIP][472] ([i915#3281]) +1 other test skip
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_reloc@basic-wc-gtt.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg2:          [SKIP][473] ([i915#2575]) -> [SKIP][474] ([i915#4537] / [i915#4812])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          [SKIP][475] ([i915#2575]) -> [SKIP][476] ([i915#4860])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          [SKIP][477] ([i915#2575]) -> [SKIP][478] ([i915#8289])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_media_fill@media-fill.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap@bad-size:
    - shard-dg2:          [SKIP][479] ([i915#4083]) -> [SKIP][480] ([i915#2575])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_mmap@bad-size.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@big-bo-tiledx:
    - shard-dg2:          [SKIP][481] ([i915#2575]) -> [SKIP][482] ([i915#4077]) +2 other tests skip
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_mmap_gtt@big-bo-tiledx.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_mmap_gtt@big-bo-tiledx.html

  * igt@gem_mmap_gtt@hang:
    - shard-dg2:          [SKIP][483] ([i915#4077]) -> [SKIP][484] ([i915#2575]) +2 other tests skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_mmap_gtt@hang.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_mmap_gtt@hang.html

  * igt@gem_mmap_wc@read:
    - shard-dg2:          [SKIP][485] ([i915#2575]) -> [SKIP][486] ([i915#4083]) +1 other test skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_mmap_wc@read.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_mmap_wc@read.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2:          [SKIP][487] ([i915#2575]) -> [SKIP][488] ([i915#3282]) +2 other tests skip
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_partial_pwrite_pread@write-uncached.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pread@bench:
    - shard-dg2:          [SKIP][489] ([i915#3282]) -> [SKIP][490] ([i915#2575])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_pread@bench.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_pread@bench.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-dg2:          [SKIP][491] ([i915#2575]) -> [SKIP][492] ([i915#4270])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_pxp@create-regular-context-1.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          [SKIP][493] ([i915#5190] / [i915#8428]) -> [SKIP][494] ([i915#2575] / [i915#5190]) +1 other test skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          [SKIP][495] ([i915#4079]) -> [SKIP][496] ([i915#2575])
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_render_tiled_blits@basic.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-rkl:          [DMESG-FAIL][497] ([i915#12964]) -> [DMESG-WARN][498] ([i915#12964])
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-3/igt@gem_tiled_swapping@non-threaded.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-rkl-1/igt@gem_tiled_swapping@non-threaded.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-dg2:          [SKIP][499] ([i915#2575]) -> [SKIP][500] +1 other test skip
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gen7_exec_parse@basic-offset.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          [SKIP][501] ([i915#2856]) -> [SKIP][502] ([i915#2575])
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gen9_exec_parse@allowed-single.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-dg2:          [SKIP][503] ([i915#2575]) -> [SKIP][504] ([i915#2856])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gen9_exec_parse@cmd-crossing-page.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         ([ABORT][505], [ABORT][506], [ABORT][507], [PASS][508]) ([i915#10131] / [i915#10887] / [i915#9820]) -> [ABORT][509] ([i915#10131] / [i915#10887])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/index.html

--===============5995949464805545717==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/dsb: Try to fix CPU MMIO fails duri=
ng legacy LUT updates (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/141613/">https://patchwork.freedesktop.org/series/141613/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_141613v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141613v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15725_full -&gt; Patchwork_141613v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_141613v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_141613v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
141613v3_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-10/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15725/shard-dg2-11/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15725/shard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15725/shard-dg2-1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-2/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_157=
25/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_15725/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/sha=
rd-dg2-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_15725/shard-dg2-4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2=
-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_15725/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15725/shard-dg2-7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1572=
5/shard-dg2-8/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg=
2-8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141613v3/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-7/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14161=
3v3/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-5=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_141613v3/shard-dg2-4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3=
/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_141613v3/shard-dg2-3/boot.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_141613v3/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-1/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shar=
d-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141613v3/shard-dg2-11/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_141613v3/shard-dg2-11/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard=
-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141613v3/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/boot.ht=
ml">PASS</a>)</li>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-12/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-12=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15725/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15725/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15725/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15725/shard-dg1-14/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-14/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
725/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15725/shard-dg1-17/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-17/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725=
/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15725/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-18/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/sh=
ard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15725/shard-dg1-18/boot.html">PASS</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141613v3/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/s=
hard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141613v3/shard-dg1-12/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141613v3/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141613v3/shard-dg1-13/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/boo=
t.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141613v3/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/s=
hard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141613v3/shard-dg1-17/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141613v3/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/s=
hard-dg1-14/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_setmaster@master-drop-set-user:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@core_setmaster@master-drop-set-user.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
41613v3/shard-dg2-11/igt@core_setmaster@master-drop-set-user.html">FAIL</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-2/igt@gem_eio@in-flight-contexts-immediate.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/=
shard-mtlp-1/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/ig=
t@gem_eio@in-flight-contexts-immediate.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@gem_eio@in-fl=
ight-contexts-immediate.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_eio@in-flight-contexts-i=
mmediate.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-3/igt@gem_eio@in-flight-contexts-immediate.html">=
PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_141613v3/shard-mtlp-4/igt@gem_eio@in-flight-contexts-immediate.html">ABO=
RT</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-6/igt@gem_tiled_swapping@non-threaded.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1416=
13v3/shard-tglu-3/igt@gem_tiled_swapping@non-threaded.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_141613v3/shard-rkl-3/igt@i915_hangman@engine-engine-error@bcs0.html">DMESG=
-WARN</a> +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@i915_module_load@reload-n=
o-display.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@reg-read-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@i915_pm_rpm@reg-read-ioctl.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/s=
hard-dg2-11/igt@i915_pm_rpm@reg-read-ioctl.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-5/igt@kms_atomic_transition@plan=
e-all-transition-nonblocking-fencing@pipe-b-hdmi-a-2.html">DMESG-WARN</a> +=
2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_flip@2x-dpms-vs-vblank=
-race-interruptible.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-shrfb-plflip-blt.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-busy-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/igt@kms_vblank@query-busy-han=
g.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:<ul>
<li>{shard-dg2-9}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-absolu=
te-wf_vblank-interruptible.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141613v3_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_getversion@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@core_getversion@basic.htm=
l">FAIL</a> ([i915#12866])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@device_reset@cold-reset-=
bound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@drm_fdinfo@busy-check-all=
@bcs0.html">SKIP</a> ([i915#8414]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@drm_fdinfo@most-busy-idle-=
check-all@vecs1.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@drm_fdinfo@virtual-busy-a=
ll.html">SKIP</a> ([i915#12506]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_bad_reloc@negative-re=
loc-lut.html">SKIP</a> ([i915#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_ccs@block-copy-compre=
ssed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_ccs@block-copy-compre=
ssed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> ([i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_ccs@block-multicopy-=
compressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-comp=
fmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/igt@gem_ccs@suspend-resume@xm=
ajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_close_race@multigpu-=
basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@execute-allforone:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_ctx_engines@execute-allforone.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141=
613v3/shard-dg2-11/igt@gem_ctx_engines@execute-allforone.html">SKIP</a> ([i=
915#2575]) +51 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_ctx_persistence@hosti=
le.html">FAIL</a> ([i915#11980] / [i915#12580])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_ctx_persistence@hosti=
le.html">FAIL</a> ([i915#11980] / [i915#12580])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@gem_ctx_sseu@engines.html=
">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> ([i915#280]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> ([i915#4812]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_exec_balancer@paralle=
l-ordering.html">FAIL</a> ([i915#6117])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@gem_exec_capture@capture-=
invisible.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_exec_fence@submit67.ht=
ml">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@gem_exec_flush@basic-uc-p=
rw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_exec_flush@basic-wb-p=
ro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_exec_reloc@basic-wc-cp=
u.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_fence_thrash@bo-write=
-verify-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_fence_thrash@bo-write-=
verify-x.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_lmem_swapping@paralle=
l-random-engines.html">SKIP</a> ([i915#12936])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_lmem_swapping@parallel-random-verify.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_141613v3/shard-dg2-11/igt@gem_lmem_swapping@parallel-random-verify.html=
">SKIP</a> ([i915#12936])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/igt@gem_lmem_swapping@smem-oo=
m@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_lmem_swapping@verify=
-ccs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#12193]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_lmem_swapping@verify-=
random-ccs@lmem0.html">SKIP</a> ([i915#4565]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_mmap_gtt@big-copy.html=
">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@gem_mmap_wc@write-cpu-rea=
d-wc-unflushed.html">SKIP</a> ([i915#4083]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_partial_pwrite_pread@=
writes-after-reads-uncached.html">SKIP</a> ([i915#3282]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_pwrite@basic-random.ht=
ml">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_pxp@dmabuf-shared-pr=
otected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> ([i915#12975])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_pxp@verify-pxp-key-ch=
ange-after-suspend-resume.html">SKIP</a> ([i915#4270]) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_render_copy@linear-to=
-vebox-y-tiled.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled-mc-ccs.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-mtlp-3/igt@gem_render_copy@y-tiled-m=
c-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@gem_render_tiled_blits@ba=
sic.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gem_tiled_partial_pwrite_=
pread@writes-after-reads.html">SKIP</a> ([i915#4077]) +10 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gem_userptr_blits@create=
-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@gen9_exec_parse@unaligne=
d-jump.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@i915_fb_tiling.html">SKIP=
</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141613v3/shard-rkl-5/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9820])</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb7/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_141613v3/shard-snb1/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@i915_pm_rps@basic-api.html=
">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@i915_query@test-query-ge=
ometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-glk3/igt@i915_selftest@mock.html">DM=
ESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> ([i915#4212]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-4/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_atomic@plane-primary=
-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-trans=
ition.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_141613v3/shard-dg2-4/igt@kms_atomic_transition@plane-all-mode=
set-transition.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/igt@kms_atomic_transition@plan=
e-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> ([i915#5286]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#4538] / [i915#528=
6]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_big_fb@4-tiled-max-h=
w-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_big_fb@linear-64bpp-r=
otate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-=
size-offset-overflow.html">SKIP</a> ([i915#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180.html">SKIP</a> ([i915#4538]) +6 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180-async-flip.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_ccs@crc-primary-basic=
-4-tiled-mtl-rc-ccs.html">SKIP</a> +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_ccs@crc-primary-basic=
-y-tiled-ccs.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_ccs@crc-primary-rota=
tion-180-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) +39 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-7/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +15 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/igt@kms_ccs@crc-sprite-planes=
-basic-yf-tiled-ccs@pipe-a-dp-4.html">SKIP</a> ([i915#10307] / [i915#6095])=
 +114 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer=
-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / =
[i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#6095]) +141 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-=
tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +60 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-4/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/igt@kms_cdclk@plane-scaling@p=
ipe-d-dp-4.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_chamelium_color@ctm-0=
-50.html">SKIP</a> +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-resolution-list:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_chamelium_edid@dp-ed=
id-resolution-list.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_chamelium_frames@hdmi=
-frame-dump.html">SKIP</a> ([i915#7828]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hp=
d-fast.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_chamelium_hpd@hdmi-hpd=
-with-enabled-mode.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-3/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_content_protection@ue=
vent.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_cursor_crc@cursor-of=
fscreen-512x170.html">SKIP</a> ([i915#12976])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-32x10.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> ([i915#3555]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#12976])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_cursor_crc@cursor-rapi=
d-movement-max-size.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_cursor_crc@cursor-sl=
iding-32x10.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> ([i915#12976]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 other test sk=
ip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_cursor_legacy@basic-=
busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_141613v3/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAI=
L</a> ([i915#2346])</li>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_157=
25/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtl=
p-4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@kms_=
cursor_legacy@flip-vs-cursor-toggle.html">PASS</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-7/igt@kms_=
cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> ([i915#3555] / [i915#8827])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_display_modes@mst-ex=
tended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_dsc@dsc-with-output-=
formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> ([i915#3469])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_feature_discovery@psr=
2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@kms_flip@2x-flip-vs-dpms-=
off-vs-modeset-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_flip@2x-flip-vs-fenc=
es-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> ([i915#3637]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([i915#9934]) +9 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_141613v3/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdm=
i-a2.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-7/igt@kms_flip@flip-vs-fences-in=
terruptible@a-hdmi-a1.html">DMESG-WARN</a> ([i915#12964]) +9 other tests dm=
esg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-7/igt@kms_flip@flip-vs-suspend-i=
nterruptible@a-hdmi-a1.html">DMESG-FAIL</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141613v3/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.htm=
l">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_141613v3/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL<=
/a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-dp4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-10/igt@kms_flip@plain-flip-fb-re=
create@c-dp4.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_flip_scaled_crc@flip=
-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915=
#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_flip_scaled_crc@flip=
-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([=
i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i91=
5#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / =
[i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</=
a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
shrfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_141613v3/shard-dg2-7/igt@kms_frontbuffer_tracking=
@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_frontbuffer_tracking=
@fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> +35 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bc-2p-rte.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_141613v3/shard-snb1/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-b=
lt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_141613v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb101010=
-draw-blt.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +3 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +5 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +32 other tests skip=
</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +18 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +14 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> ([i915#1187] / [i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> ([i915#12339]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_panel_fitting@atomic-=
fastset.html">SKIP</a> ([i915#6301])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_panel_fitting@atomic-=
fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg1-18/igt@kms_plane@plane-position-hole.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613=
v3/shard-dg1-14/igt@kms_plane@plane-position-hole.html">DMESG-WARN</a> ([i9=
15#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_plane_scaling@plane-=
downscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +=
4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-modifiers.html">SKIP</a> ([i915#2575] / [i915#=
9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-d.html">SKIP</a> ([i915#12247]) +1=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@kms_plane_scaling@planes-scaler-unity-scaling=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_141613v3/shard-dg2-11/igt@kms_plane_scaling@planes-scaler-unity-sc=
aling.html">SKIP</a> ([i915#2575] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#695=
3] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-c.html">SKIP</a> ([i915#12247]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_pm_backlight@basic-b=
rightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_pm_dc@dc3co-vpb-simu=
lation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-d=
g2-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html=
">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html"=
>SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL<=
/a> ([i915#8717])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613=
v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#951=
9]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_prime@d3hot.html">SKI=
P</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_psr2_sf@fbc-pr-cursor-=
plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_psr2_sf@pr-cursor-pl=
ane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-=
plane-update-sf-dmg-area-big-fb.html">SKIP</a> ([i915#11520]) +4 other test=
s skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_psr2_sf@psr2-primary-=
plane-update-sf-dmg-area-big-fb.html">SKIP</a> ([i915#11520]) +9 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> ([i915#9683]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@kms_psr@psr-primary-rend=
er.html">SKIP</a> ([i915#9732]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-page-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_psr@psr2-primary-page-=
flip.html">SKIP</a> ([i915#1072] / [i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-=
gtt.html">SKIP</a> ([i915#9732]) +7 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_psr@psr2-sprite-mmap-=
gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> ([i915#12755])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@kms_vblank@ts-continuatio=
n-modeset.html">SKIP</a> ([i915#2575]) +76 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-5/igt@kms_vrr@seamless-rr-switch=
-vrr.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-1/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> ([i915#2437])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-17/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> ([i915#2436])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-check-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@perf_pmu@all-busy-check-all.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/=
shard-dg2-11/igt@perf_pmu@all-busy-check-all.html">SKIP</a> ([i915#12506]) =
+2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-13/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-rkl-2/igt@prime_udl.html">SKIP</a></=
li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-18/igt@prime_vgem@basic-fence-fl=
ip.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg1-14/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-tglu-10/igt@syncobj_wait@invalid-wai=
t-zero-handles.html">FAIL</a> ([i915#12564] / [i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@fbdev@eof.html">SKIP</a> ([i915#2582]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/sha=
rd-dg2-8/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-1us:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-7/igt@gem_eio@wait-wedge-1us.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/i=
gt@gem_eio@wait-wedge-1us.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@gem_eio@wait-wedge-1us.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
725/shard-mtlp-8/igt@gem_eio@wait-wedge-1us.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@gem_eio@=
wait-wedge-1us.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_eio@wait-wedge-1us.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mt=
lp-2/igt@gem_eio@wait-wedge-1us.html">PASS</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-4/igt@gem_eio@=
wait-wedge-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-repeat:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-3/igt@gem_exec_fence@syncobj-repeat.html">DMESG-WAR=
N</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
41613v3/shard-rkl-1/igt@gem_exec_fence@syncobj-repeat.html">PASS</a> +2 oth=
er tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@engines@rcs0:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-2/igt@gem_exec_gttfill@engines@rcs0.html">INCOMPL=
ETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/s=
hard-mtlp-5/igt@gem_exec_gttfill@engines@rcs0.html">INCOMPLETE</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard=
-mtlp-4/igt@gem_exec_gttfill@engines@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html=
">ABORT</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@gem_exec_suspend=
@basic-s4-devices@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-2/igt@gem_linear_blits@interruptible.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
141613v3/shard-dg2-4/igt@gem_linear_blits@interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_lmem_swapping@random-engines.html">SKIP<=
/a> ([i915#12936]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141613v3/shard-dg2-8/igt@gem_lmem_swapping@random-engines.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-8/igt@gem_mmap_offset@clear.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/ig=
t@gem_mmap_offset@clear.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_mmap_offset@clear.html"=
>ABORT</a>) ([i915#10729]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141613v3/shard-mtlp-2/igt@gem_mmap_offset@clear.html">P=
ASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCO=
MPLETE</a> ([i915#12455]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_141613v3/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@g=
t0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-6/igt@i915_power@sanity.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@=
i915_power@sanity.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@i915_power@sanity.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp=
-1/igt@i915_power@sanity.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@i915_power@sanity.html">SKI=
P</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/sha=
rd-mtlp-2/igt@i915_power@sanity.html">PASS</a>) ([i915#7984]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-=
8/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard=
-mtlp-7/igt@i915_selftest@live@workarounds.html">ABORT</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@i915_sel=
ftest@live@workarounds.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@i915_selftest@live@workaround=
s.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15725/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">ABORT</a>) (=
[i915#12061]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_141613v3/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rota=
te-0-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_15725/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-ro=
tate-0-hflip.html">DMESG-FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-=
64bpp-rotate-0-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-0-hflip.html">PASS</a>) ([i915#11627]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-mtlp-5/igt@=
kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rota=
te-180-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15725/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-=
rotate-180-hflip.html">DMESG-FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@kms_big_fb@4-tiled-ma=
x-hw-stride-64bpp-rotate-180-hflip.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@kms_big_fb@4-tile=
d-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a>) ([i915#11627]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/sha=
rd-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-hang@modeset-pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-7/igt@kms_busy@basic-hang@modeset-pipe-a.html">DMES=
G-WARN</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_141613v3/shard-rkl-5/igt@kms_busy@basic-hang@modeset-pip=
e-a.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2=
-rc-ccs.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141613v3/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4=
-tiled-dg2-rc-ccs.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-3/igt@kms_color@deep-color.html">SKIP</a> ([i915#35=
55]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
1613v3/shard-dg2-10/igt@kms_color@deep-color.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-snb7/igt@kms_cursor=
_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.=
html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_141613v3/shard-snb1/igt@kms_flip@flip-vs-absolute-wf_=
vblank@a-hdmi-a1.html">PASS</a> +5 other tests pass</li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.=
html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_141613v3/shard-glk3/igt@kms_flip@flip-vs-absolute-wf_=
vblank@a-hdmi-a1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</=
a> ([i915#12517] / [i915#12996] / [i915#2122]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip@=
plain-flip-fb-recreate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.ht=
ml">FAIL</a> ([i915#12517]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_141613v3/shard-dg1-12/igt@kms_flip@plain-flip-fb-recre=
ate@b-hdmi-a3.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible.=
html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_141613v3/shard-tglu-8/igt@kms_flip@plain-flip-ts-chec=
k-interruptible.html">PASS</a> +7 other tests pass</li>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15725/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/sha=
rd-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3=
/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_=
flip@plain-flip-ts-check-interruptible.html">PASS</a>) ([i915#11989] / [i91=
5#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_141613v3/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible@=
d-edp1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15725/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible@d-=
edp1.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15725/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible@d-ed=
p1.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15725/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15725/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.h=
tml">FAIL</a>) ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_141613v3/shard-mtlp-6/igt@kms_flip@plain-flip-ts-chec=
k-interruptible@d-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check-interruptible.ht=
ml">FAIL</a> ([i915#10826]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_141613v3/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check-=
interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-3/igt@kms_flip@wf_vblank-ts-check-interruptible@a=
-edp1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15725/shard-mtlp-5/igt@kms_flip@wf_vblank-ts-check-interruptible@a-ed=
p1.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15725/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15725/shard-mtlp-8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_157=
25/shard-mtlp-4/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/=
shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html">PAS=
S</a>) ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_141613v3/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check-interru=
ptible@a-edp1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check-interruptible@d-=
hdmi-a1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141613v3/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check-inter=
ruptible@d-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-handle-closed:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_getfb@getfb-handle-closed.html">SKIP</a>=
 ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141613v3/shard-dg2-8/igt@kms_getfb@getfb-handle-closed.html">PASS</=
a> +45 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-p=
ixel-format.html">SKIP</a> ([i915#2575] / [i915#9423]) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@km=
s_plane_scaling@plane-upscale-20x20-with-pixel-format.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915=
#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_141613v3/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +2 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-2/igt@perf@gen12-group-concurrent-oa-buffer-read.ht=
ml">FAIL</a> ([i915#10538]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_141613v3/shard-rkl-1/igt@perf@gen12-group-concurrent-o=
a-buffer-read.html">PASS</a></li>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-2/igt@perf@gen12-group-concurrent-oa-buffer-read.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15725/shard-mtlp-5/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/sha=
rd-mtlp-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1=
/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@perf=
@gen12-group-concurrent-oa-buffer-read.html">FAIL</a>) ([i915#10538]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v3/sha=
rd-mtlp-6/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@perf@gen12-group-exclusive-stream-ctx-handle=
.html">SKIP</a> ([i915#12506]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@perf@gen12-group-exclusive=
-stream-ctx-handle.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-cache.html">=
SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141613v3/shard-dg2-8/igt@api_intel_bb@object-reloc-purge-ca=
che.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@drm_fdinfo@busy-hang.html">SKIP</a> ([i915#84=
14]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
1613v3/shard-dg2-11/igt@drm_fdinfo@busy-hang.html">SKIP</a> ([i915#12506]) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-close.html">SKI=
P</a> ([i915#8555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_141613v3/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-close.=
html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_exec_balancer@bonded-semaphore.html">SKIP=
</a> ([i915#4812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141613v3/shard-dg2-11/igt@gem_exec_balancer@bonded-semaphore.ht=
ml">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html">SKIP</a>=
 ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141613v3/shard-dg2-8/igt@gem_exec_balancer@bonded-sync.html">SKIP</=
a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_exec_flush@basic-uc-prw-default.html">SKI=
P</a> ([i915#3539]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_141613v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.=
html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_flush@basic-uc-set-default.html">SK=
IP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_141613v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-set-default.=
html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_exec_reloc@basic-range-active.html">SKIP<=
/a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_141613v3/shard-dg2-11/igt@gem_exec_reloc@basic-range-active.html=
">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_reloc@basic-wc-gtt.html">SKIP</a> (=
[i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_141613v3/shard-dg2-8/igt@gem_exec_reloc@basic-wc-gtt.html">SKIP</a> (=
[i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts.htm=
l">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_exec_schedule@preempt-queue=
-contexts.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-=
interruptible.html">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_fenced_exe=
c_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> ([i915#4860])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_media_fill@media-fill.html">SKIP</a> ([i=
915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_141613v3/shard-dg2-8/igt@gem_media_fill@media-fill.html">SKIP</a> ([i91=
5#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_mmap@bad-size.html">SKIP</a> ([i915#4083]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14161=
3v3/shard-dg2-11/igt@gem_mmap@bad-size.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledx:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_mmap_gtt@big-bo-tiledx.html">SKIP</a> ([=
i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141613v3/shard-dg2-8/igt@gem_mmap_gtt@big-bo-tiledx.html">SKIP</a> ([i=
915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_mmap_gtt@hang.html">SKIP</a> ([i915#4077]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14161=
3v3/shard-dg2-11/igt@gem_mmap_gtt@hang.html">SKIP</a> ([i915#2575]) +2 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_mmap_wc@read.html">SKIP</a> ([i915#2575]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14161=
3v3/shard-dg2-8/igt@gem_mmap_wc@read.html">SKIP</a> ([i915#4083]) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_partial_pwrite_pread@write-uncached.html=
">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_141613v3/shard-dg2-8/igt@gem_partial_pwrite_pread@write-u=
ncached.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_pread@bench.html">SKIP</a> ([i915#3282]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141613v=
3/shard-dg2-11/igt@gem_pread@bench.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_pxp@create-regular-context-1.html">SKIP<=
/a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_141613v3/shard-dg2-8/igt@gem_pxp@create-regular-context-1.html">=
SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.htm=
l">SKIP</a> ([i915#5190] / [i915#8428]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_141613v3/shard-dg2-11/igt@gem_render_copy@=
y-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#2575] / [i915#5190]) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_render_tiled_blits@basic.html">SKIP</a> (=
[i915#4079]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_141613v3/shard-dg2-11/igt@gem_render_tiled_blits@basic.html">SKIP</a>=
 ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-3/igt@gem_tiled_swapping@non-threaded.html">DMESG-F=
AIL</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141613v3/shard-rkl-1/igt@gem_tiled_swapping@non-threaded.ht=
ml">DMESG-WARN</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gen7_exec_parse@basic-offset.html">SKIP</a> =
([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_141613v3/shard-dg2-8/igt@gen7_exec_parse@basic-offset.html">SKIP</a>=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gen9_exec_parse@allowed-single.html">SKIP</a>=
 ([i915#2856]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141613v3/shard-dg2-11/igt@gen9_exec_parse@allowed-single.html">SKIP=
</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP=
</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141613v3/shard-dg2-8/igt@gen9_exec_parse@cmd-crossing-page.html=
">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injectio=
n.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_"=
>ABORT</a>, [ABORT][507], [PASS][508]) ([i915#10131] / [i915#10887] / [i915=
#9820]) -&gt; [ABORT][509] ([i915#10131] / [i915#10887])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5995949464805545717==--
