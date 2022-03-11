Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BE14D65D0
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 17:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F9F810E385;
	Fri, 11 Mar 2022 16:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4909110E34D;
 Fri, 11 Mar 2022 16:12:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 441F6AA01E;
 Fri, 11 Mar 2022 16:12:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4551954720032204562=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 11 Mar 2022 16:12:02 -0000
Message-ID: <164701512223.23985.11240698590397593764@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311101854.146911-1-jani.nikula@intel.com>
In-Reply-To: <20220311101854.146911-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/pciids=3A_add_common_INTEL?=
 =?utf-8?q?=5FVGA=5FDEVICE=5FINIT_macro?=
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

--===============4551954720032204562==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/pciids: add common INTEL_VGA_DEVICE_INIT macro
URL   : https://patchwork.freedesktop.org/series/101280/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11351_full -> Patchwork_22542_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22542_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22542_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22542_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-iclb:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb6/igt@i915_pm_rpm@system-suspend-modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb5/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@perf_pmu@busy-start@rcs0:
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl4/igt@perf_pmu@busy-start@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl3/igt@perf_pmu@busy-start@rcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ccs@block-copy-inplace}:
    - {shard-tglu}:       NOTRUN -> [SKIP][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglu-2/igt@gem_ccs@block-copy-inplace.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - {shard-rkl}:        NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  
Known issues
------------

  Here are the changes found in Patchwork_22542_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][8] -> [TIMEOUT][9] ([i915#2481] / [i915#3070])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb4/igt@gem_eio@unwedge-stress.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#4525])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][12] ([i915#5076])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][13] ([i915#4547])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl9/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2846])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2842]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#2842]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][22] -> [FAIL][23] ([i915#2842])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109283]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb7/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#109283])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#4613]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#4613]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#4613])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#4613])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][30] ([i915#2658])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@gem_pread@exhaustion.html
    - shard-kbl:          NOTRUN -> [WARN][31] ([i915#2658])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#4270]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb5/igt@gem_pxp@create-regular-context-2.html
    - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#4270])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#768]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_spin_batch@legacy@vebox:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#2898])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-apl8/igt@gem_spin_batch@legacy@vebox.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@gem_spin_batch@legacy@vebox.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#3297]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#2527] / [i915#2856])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@gen9_exec_parse@bb-secure.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][39] ([i915#2373])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][40] ([i915#1759])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl1/igt@i915_suspend@forcewake.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#5286]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#110725] / [fdo#111614])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#111614])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3777]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3777]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3777]) +5 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#111615]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb2/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#110723])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278] / [i915#3886]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs:
    - shard-snb:          NOTRUN -> [SKIP][52] ([fdo#109271]) +41 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-snb5/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#3886]) +12 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +57 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#3689] / [i915#3886]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#3886]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#3886]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3689]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb2/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-snb:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-snb5/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109278] / [i915#1149])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][66] ([i915#1319])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content_type_change:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb5/igt@kms_content_protection@content_type_change.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][69] ([i915#180])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3319]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-random:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#3359])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([fdo#109279] / [i915#3359]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109274] / [fdo#111825]) +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#3788])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#5287])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-4tiled.html
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#5287]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb5/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-4tiled.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109274]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][78] -> [FAIL][79] ([i915#79])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-kbl:          [PASS][80] -> [FAIL][81] ([i915#79]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][82] -> [DMESG-WARN][83] ([i915#180]) +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#109280] / [fdo#111825]) +12 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109280]) +9 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +56 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [FAIL][87] ([i915#1188])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#3555])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#533])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl8/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#533])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][91] ([fdo#108145] / [i915#265]) +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][92] ([fdo#108145] / [i915#265]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
    - shard-apl:          NOTRUN -> [FAIL][93] ([fdo#108145] / [i915#265])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-64:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278]) +14 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_plane_cursor@pipe-d-viewport-size-64.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#5288])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-a-tiling-4.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#2920])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#658]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#658]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#658])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][100] -> [SKIP][101] ([fdo#109441])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb4/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-tglb:         NOTRUN -> [FAIL][102] ([i915#132] / [i915#3467])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271]) +255 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl6/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][104] ([i915#180] / [i915#295])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vrr@flipline:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([fdo#109502])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2437])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([i915#2530])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#2530])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109289])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][110] ([i915#1722])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl8/igt@perf@polling-small-buf.html

  * igt@perf_pmu@rc6-suspend:
    - shard-skl:          [PASS][111] -> [INCOMPLETE][112] ([i915#4939])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-skl10/igt@perf_pmu@rc6-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@perf_pmu@rc6-suspend.html

  * igt@prime_nv_api@nv_self_import_to_different_fd:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([fdo#109291]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@prime_nv_api@nv_self_import_to_different_fd.html

  * igt@prime_nv_pcopy@test3_4:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109291]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@prime_nv_pcopy@test3_4.html

  * igt@prime_vgem@fence-write-hang:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([fdo#109295])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][116] ([i915#5098])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl1/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2994]) +3 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2994])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@sema-10:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#2994])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@drm_mm@all@color_evict:
    - shard-skl:          [INCOMPLETE][120] -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-skl1/igt@drm_mm@all@color_evict.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl3/igt@drm_mm@all@color_evict.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][122] ([i915#658]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb4/igt@feature_discovery@psr2.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125] +3 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
    - shard-apl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-apl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [INCOMPLETE][128] ([i915#4547]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-skl10/igt@gem_exec_capture@pi@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl9/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_cap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/index.html

--===============4551954720032204562==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/pciids: add common INTEL_VGA_DEVICE_INIT macro</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101280/">https://patchwork.freedesktop.org/series/101280/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11351_full -&gt; Patchwork_22542_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22542_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22542_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22542_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb6/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb5/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-start@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl4/igt@perf_pmu@busy-start@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl3/igt@perf_pmu@busy-start@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_ccs@block-copy-inplace}:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglu-2/igt@gem_ccs@block-copy-inplace.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22542_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb4/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl9/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb7/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109283]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl4/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb5/igt@gem_pxp@create-regular-context-2.html">SKIP</a> ([i915#4270]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_pxp@create-regular-context-2.html">SKIP</a> ([i915#4270])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@legacy@vebox:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-apl8/igt@gem_spin_batch@legacy@vebox.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@gem_spin_batch@legacy@vebox.html">FAIL</a> ([i915#2898])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@gen9_exec_parse@bb-secure.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1759])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl1/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#5286]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb2/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([fdo#111615]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-snb5/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs.html">SKIP</a> ([fdo#109271]) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb2/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-snb5/igt@kms_chamelium@dp-crc-single.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_chamelium@hdmi-aspect-ratio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@kms_chamelium@hdmi-audio.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@kms_color@pipe-d-ctm-blue-to-red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_color_chamelium@pipe-a-ctm-negative.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb5/igt@kms_content_protection@content_type_change.html">SKIP</a> ([fdo#109300] / [fdo#111066]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html">SKIP</a> ([i915#3788])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-wc-4tiled:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-4tiled.html">SKIP</a> ([i915#5287])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb5/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-4tiled.html">SKIP</a> ([i915#5287]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +56 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl8/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-viewport-size-64:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_plane_cursor@pipe-d-viewport-size-64.html">SKIP</a> ([fdo#109278]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-a-tiling-4.html">SKIP</a> ([i915#5288])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb4/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_psr@psr2_primary_blt.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl6/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html">SKIP</a> ([fdo#109271]) +255 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@kms_vrr@flipline.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@perf@gen12-oa-tlb-invalidate.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl8/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-skl10/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> ([i915#4939])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_self_import_to_different_fd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@prime_nv_api@nv_self_import_to_different_fd.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb3/igt@prime_nv_pcopy@test3_4.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl1/igt@syncobj_timeline@transfer-timeline-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl7/igt@sysfs_clients@busy.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl8/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-tglb3/igt@sysfs_clients@sema-10.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_mm@all@color_evict:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-skl1/igt@drm_mm@all@color_evict.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl3/igt@drm_mm@all@color_evict.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-iclb4/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> +3 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-apl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-apl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11351/shard-skl10/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22542/shard-skl9/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_cap</p>
</li>
</ul>

</body>
</html>

--===============4551954720032204562==--
