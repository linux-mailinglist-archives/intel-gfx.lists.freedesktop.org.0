Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A31735849AD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jul 2022 04:20:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3466110E864;
	Fri, 29 Jul 2022 02:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3ECE410E182;
 Fri, 29 Jul 2022 02:20:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C253A73C7;
 Fri, 29 Jul 2022 02:20:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9024701332710801533=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Date: Fri, 29 Jul 2022 02:20:00 -0000
Message-ID: <165906120000.24436.5466411145872489774@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220728183641.55692-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220728183641.55692-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_support_for_DC5_state_=28rev2=29?=
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

--===============9024701332710801533==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Add support for DC5 state (rev2)
URL   : https://patchwork.freedesktop.org/series/106816/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11946_full -> Patchwork_106816v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106816v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106816v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106816v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl7/igt@gem_exec_capture@pi@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl2/igt@gem_exec_capture@pi@bcs0.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:
    - shard-skl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl3/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html

  
Known issues
------------

  Here are the changes found in Patchwork_106816v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#658])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@feature_discovery@psr2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb7/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][7] ([i915#4991])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#5784])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#4525]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl7/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][18] ([i915#4991])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-apl6/igt@gem_userptr_blits@input-checking.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-apl:          [PASS][19] -> [WARN][20] ([i915#6405])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
    - shard-skl:          [PASS][21] -> [WARN][22] ([i915#6405])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([i915#6473])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3886]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-apl7/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-apl7/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][29] ([fdo#109271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-glk7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][30] -> [INCOMPLETE][31] ([i915#180] / [i915#1982] / [i915#4939])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#2122])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2122]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#3555])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#2672]) +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([i915#3555])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#2672] / [i915#3555])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +24 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-apl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +78 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          NOTRUN -> [FAIL][47] ([i915#1188])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
    - shard-kbl:          [PASS][48] -> [FAIL][49] ([i915#1188])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441]) +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([i915#5519])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][54] ([i915#2582]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@fbdev@nullptr.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][56] ([i915#6268]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@vebox:
    - {shard-dg1}:        [FAIL][58] ([i915#4883]) -> [PASS][59] +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-dg1-15/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-dg1-13/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][60] ([i915#2410]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - {shard-tglu}:       [TIMEOUT][62] ([i915#3063]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglu-6/igt@gem_eio@unwedge-stress.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-tglu-8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-rkl}:        [SKIP][64] ([i915#6259]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][66] ([i915#4525]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][68] ([i915#2846]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][70] ([i915#2842]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - {shard-rkl}:        [FAIL][72] ([i915#2842]) -> [PASS][73] +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_exec_fair@basic-none@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][74] ([i915#2842]) -> [PASS][75] +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-tglu}:       [FAIL][76] ([i915#2842]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - {shard-rkl}:        [SKIP][78] ([fdo#109313]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - {shard-rkl}:        [SKIP][80] ([i915#3281]) -> [PASS][81] +17 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_set_tiling_vs_pwrite:
    - {shard-rkl}:        [SKIP][82] ([i915#3282]) -> [PASS][83] +10 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html

  * igt@gen9_exec_parse@batch-without-end:
    - {shard-rkl}:        [SKIP][84] ([i915#2527]) -> [PASS][85] +4 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gen9_exec_parse@batch-without-end.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_backlight@fade:
    - {shard-rkl}:        [SKIP][86] ([i915#3012]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@i915_pm_backlight@fade.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@i915_pm_backlight@fade.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-rkl}:        [FAIL][88] ([i915#3989]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-rkl}:        [WARN][90] ([i915#6405]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - {shard-dg1}:        [SKIP][92] ([i915#1397]) -> [PASS][93] +4 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][94] ([i915#3614] / [i915#4939]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl4/igt@i915_suspend@debugfs-reader.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@i915_suspend@forcewake.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - {shard-rkl}:        [SKIP][98] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][99] +6 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][100] ([i915#2122]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [FAIL][102] ([i915#79]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][104] ([i915#79]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][106] ([i915#1849] / [i915#4098]) -> [PASS][107] +11 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-skl:          [DMESG-WARN][108] ([i915#1982]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - {shard-rkl}:        [SKIP][110] ([i915#1849] / [i915#3546] / [i915#4098]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][112] ([fdo#108145] / [i915#265]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][114] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@cursor_render:
    - {shard-rkl}:        [SKIP][116] ([i915#1072]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_psr@cursor_render.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@kms_psr@cursor_render.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][118] ([fdo#109441]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-b-query-idle:
    - {shard-rkl}:        [SKIP][120] ([i915#1845] / [i915#4098]) -> [PASS][121] +21 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_vblank@pipe-b-query-idle.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][122] ([fdo#109289]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-1/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [FAIL][124] ([i915#5639]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb1/igt@perf@polling-parameterized.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-tglb8/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - {shard-rkl}:        [FAIL][126] ([i915#1722]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@perf@polling-small-buf.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-5/igt@perf@polling-small-buf.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][128] ([i915#51]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl6/igt@perf@short-reads.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl9/igt@perf@short-reads.html

  * igt@perf_pmu@rc6-suspend:
    - shard-apl:          [DMESG-WARN][130] ([i915#180]) -> [PASS][131] +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/igt@perf_pmu@rc6-suspend.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-apl7/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][132] ([i915#6117]) -> [SKIP][133] ([i915#4525])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][134] ([i915#2842]) -> [FAIL][135] ([i915#2852])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][136] ([i915#180] / [i915#4939]) -> [FAIL][137] ([i915#4767])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
    - shard-skl:          [SKIP][138] ([fdo#109271] / [i915#1888]) -> [SKIP][139] ([fdo#109271])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][140] ([fdo#111068] / [i915#658]) -> [SKIP][141] ([i915#2920]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][142] ([i915#2920]) -> [SKIP][143] ([i915#658])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl4/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl4/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl4/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl4/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl4/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6405]: https://gitlab.freedesktop.org/drm/intel/issues/6405
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6473]: https://gitlab.freedesktop.org/drm/intel/issues/6473
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_11946 -> Patchwork_106816v2

  CI-20190529: 20190529
  CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106816v2: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/index.html

--===============9024701332710801533==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Add support for DC5 state (rev=
2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/106816/">https://patchwork.freedesktop.org/series/106816/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_106816v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106816v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11946_full -&gt; Patchwork_106816v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106816v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_106816v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
106816v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl7/igt@gem_exec_capture@pi@bcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shar=
d-skl2/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl1/igt@kms_cursor_legacy@basic-flip-before-cursor@ato=
mic-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-skl3/igt@kms_cursor_legacy@basic-fli=
p-before-cursor@atomic-transitions.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106816v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard=
-iclb7/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard=
-tglb3/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106816v2/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fen=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4525">i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v=
2/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v=
2/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-skl7/igt@gem_render_copy@yf-tiled-to=
-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-apl6/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11946/shard-apl1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
816v2/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6405">i915#6405</a=
>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11946/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6816v2/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6405">i915#6405</=
a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1068=
16v2/shard-skl1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">TIMEOUT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6473">i915#6473</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@kms_ccs@pipe-b-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-apl7/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@kms_color_chamelium@pipe-b-=
ctm-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-apl7/igt@kms_color_chamelium@pipe-d-=
ctm-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-glk7/igt@kms_dither@fb-8bpc-vs-panel=
-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/sha=
rd-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_106816v2/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@=
bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdm=
i-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_106816v2/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@ac-hdm=
i-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106816v2/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#=
2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_106816v2/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-iclb2/igt@kms=
_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default=
-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-apl6/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +24 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +78 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pip=
e-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v=
2/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shar=
d-iclb8/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_106816v2/shard-iclb8/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@fbdev@nullptr.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rk=
l-6/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106816v2/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@vebox:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-dg1-15/igt@gem_ctx_persistence@legacy-engines-hostile@v=
ebox.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4883">i915#4883</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_106816v2/shard-dg1-13/igt@gem_ctx_persistence@legacy-eng=
ines-hostile@vebox.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#=
2410</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106816v2/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-tglu-6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1068=
16v2/shard-tglu-8/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6259">i915#6259</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
816v2/shard-rkl-6/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106816v2/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
816v2/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106816v2/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06816v2/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6816v2/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_106816v2/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109313">fdo#109313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106816v2/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel=
-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281"=
>i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_106816v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.h=
tml">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816=
v2/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html">PASS</a> +10 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-1/igt@gen9_exec_parse@batch-without-end.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#=
2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106816v2/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html">PASS</a=
> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@i915_pm_backlight@fade.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2=
/shard-rkl-6/igt@i915_pm_backlight@fade.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/sha=
rd-rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6405">i91=
5#6405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106816v2/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1068=
16v2/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-kbl4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3=
614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">=
i915#4939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106816v2/shard-kbl6/igt@i915_suspend@debugfs-reader.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-kbl1/igt@i915_suspend@forcewake.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10681=
6v2/shard-kbl7/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu=
-untiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@kms_draw_crc@=
draw-method-xrgb2101010-mmap-cpu-untiled.html">PASS</a> +6 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_106816v2/shard-skl6/igt@kms_flip@flip-vs-absolute-=
wf_vblank-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_106816v2/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106816v2/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +11 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-i=
ndfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl3/igt@kms_frontbuf=
fer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849"=
>i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3546">i915#3546</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_106816v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-=
alpha-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106816v2/shard-skl7/igt@kms_plane_alpha_blend@pipe-=
c-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#1=
09642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11106=
8">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_106816v2/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@kms_psr@cursor_render.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/=
shard-rkl-6/igt@kms_psr@cursor_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_106816v2/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@kms_vblank@pipe-b-query-idle.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915=
#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106816v2/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a> +2=
1 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_106816v2/shard-rkl-1/igt@perf@gen12-unprivileged-single-ctx-=
counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-tglb1/igt@perf@polling-parameterized.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1068=
16v2/shard-tglb8/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-rkl-1/igt@perf@polling-small-buf.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2=
/shard-rkl-5/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl6/igt@perf@short-reads.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-skl9=
/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-apl1/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v=
2/shard-apl7/igt@perf_pmu@rc6-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106816v2/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106816v2/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915#=
2852</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915=
#4939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106816v2/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp=
-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shar=
d-skl3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscalin=
g@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_106816v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11946/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106816v2/shard-iclb7/igt@kms_psr2_sf@overlay-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11946/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11946/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11946/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106816v2/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_106816v2/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-kbl4/igt@=
runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_106816v2/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106816v2/shard-=
kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11946 -&gt; Patchwork_106816v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106816v2: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============9024701332710801533==--
