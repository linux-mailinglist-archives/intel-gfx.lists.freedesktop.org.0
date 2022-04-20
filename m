Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5429F507E0C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 03:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9614210E59B;
	Wed, 20 Apr 2022 01:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 56FF310E59B;
 Wed, 20 Apr 2022 01:17:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 537C0AA0EB;
 Wed, 20 Apr 2022 01:17:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8204252054382750346=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 20 Apr 2022 01:17:06 -0000
Message-ID: <165041742632.24581.4631977458912872690@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220419193314.526966-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220419193314.526966-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgR1ND?=
 =?utf-8?q?_support_=28rev7=29?=
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

--===============8204252054382750346==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GSC support (rev7)
URL   : https://patchwork.freedesktop.org/series/102160/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11520_full -> Patchwork_102160v7_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102160v7_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102160v7_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102160v7_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@verify-ccs:
    - {shard-tglu}:       NOTRUN -> [SKIP][3] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglu-6/igt@gem_lmem_swapping@verify-ccs.html

  
Known issues
------------

  Here are the changes found in Patchwork_102160v7_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#658])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@feature_discovery@psr2.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_eio@in-flight-1us:
    - shard-tglb:         [PASS][7] -> [TIMEOUT][8] ([i915#3063])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@gem_eio@in-flight-1us.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][9] ([i915#5076] / [i915#5614])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][10] ([i915#2846])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gem_exec_fair@basic-deadline.html
    - shard-kbl:          NOTRUN -> [FAIL][11] ([i915#2846])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-apl:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#2849])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-snb:          [PASS][19] -> [SKIP][20] ([fdo#109271]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-snb7/igt@gem_exec_flush@basic-wb-rw-default.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gem_lmem_swapping@parallel-random-engines.html
    - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#4613])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#4270])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#768]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#3297])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][27] ([i915#4991])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@gem_userptr_blits@input-checking.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][28] ([i915#4991])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271]) +45 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#2856])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109293] / [fdo#109506])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          NOTRUN -> [INCOMPLETE][32] ([i915#5420])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl3/igt@i915_suspend@forcewake.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([i915#5286])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#5286])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3777])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110723])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#111615] / [i915#3689])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278] / [i915#3886]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-negative.html
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278]) +13 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109274] / [fdo#109278])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#5287])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][57] -> [INCOMPLETE][58] ([i915#180])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109274]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#2122]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([i915#3701])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +64 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109280]) +7 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([fdo#108145] / [i915#265])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-none:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#3536])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-none.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#5235]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale.html

  * igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-a-edp-1-upscale-with-rotation:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#5176]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-a-edp-1-upscale-with-rotation.html

  * igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-b-edp-1-upscale-with-rotation:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +35 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-b-edp-1-upscale-with-rotation.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#111068] / [i915#658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_psr2_su@page_flip-p010.html
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109441])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [PASS][80] -> [SKIP][81] ([i915#5519])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][82] ([IGT#2])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_sysfs_edid_timing.html
    - shard-kbl:          NOTRUN -> [FAIL][83] ([IGT#2])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_sysfs_edid_timing.html

  * igt@perf@buffer-fill:
    - shard-snb:          NOTRUN -> [SKIP][84] ([fdo#109271]) +50 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@perf@buffer-fill.html

  * igt@prime_nv_test@i915_import_pread_pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109291]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@prime_nv_test@i915_import_pread_pwrite.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-skl:          NOTRUN -> [DMESG-WARN][86] ([i915#5098])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2994])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@fair-3:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2994])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@sysfs_clients@fair-3.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109307])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][90] ([i915#4525]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][92] ([i915#2846]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk5/igt@gem_exec_fair@basic-deadline.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][94] ([i915#2842]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_params@rel-constants-invalid-ring:
    - shard-skl:          [DMESG-WARN][96] ([i915#1982]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl6/igt@gem_exec_params@rel-constants-invalid-ring.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@gem_exec_params@rel-constants-invalid-ring.html

  * igt@gem_exec_schedule@wide@bcs0:
    - shard-kbl:          [INCOMPLETE][98] ([i915#5725]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl1/igt@gem_exec_schedule@wide@bcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_exec_schedule@wide@bcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][100] ([i915#118]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][102] ([i915#454]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][104] ([i915#3921]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][106] ([i915#2346] / [i915#533]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][108] ([i915#2346]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][110] -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [INCOMPLETE][112] ([i915#3614]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][114] ([i915#180]) -> [PASS][115] +4 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [SKIP][116] ([i915#3701]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][118] ([fdo#108145] / [i915#265]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [INCOMPLETE][120] ([i915#5293]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
    - shard-iclb:         [SKIP][122] ([i915#5176]) -> [PASS][123] +4 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][124] ([fdo#109441]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][126] ([i915#5519]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][128] ([i915#180]) -> [PASS][129] +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][130] ([i915#4525]) -> [DMESG-WARN][131] ([i915#5614]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@gem_exec_balancer@parallel.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb4/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [DMESG-WARN][132] ([i915#5614]) -> [SKIP][133] ([i915#4525]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
    - shard-skl:          [SKIP][134] ([fdo#109271] / [i915#1888]) -> [SKIP][135] ([fdo#109271])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][136] ([fdo#111068] / [i915#658]) -> [SKIP][137] ([i915#2920])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [SKIP][138] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][139] ([i915#4148])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4148]: https://gitlab.freedesktop.org/drm/intel/issues/4148
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5293]: https://gitlab.freedesktop.org/drm/intel/issues/5293
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5420]: https://gitlab.freedesktop.org/drm/intel/issues/5420
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5725]: https://gitlab.freedesktop.org/drm/intel/issues/5725
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768


Build changes
-------------

  * Linux: CI_DRM_11520 -> Patchwork_102160v7

  CI-20190529: 20190529
  CI_DRM_11520: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102160v7: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html

--===============8204252054382750346==
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
<tr><td><b>Series:</b></td><td>GSC support (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102160/">https://patchwork.freedesktop.org/series/102160/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11520_full -&gt; Patchwork_102160v7_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102160v7_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102160v7_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102160v7_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_lmem_swapping@verify-ccs:<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglu-6/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102160v7_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@gem_ctx_persistence@engines-mixed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@gem_eio@in-flight-1us.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@gem_exec_balancer@parallel-keep-in-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5076">i915#5076</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-snb7/igt@gem_exec_flush@basic-wb-rw-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/768">i915#768</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gen7_exec_parse@basic-offset.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109293">fdo#109293</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5420">i915#5420</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl3/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@i915_suspend@forcewake.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110725">fdo#110725</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3777">i915#3777</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3777">i915#3777</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm-0-75.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-negative.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_color_chamelium@pipe-c-ctm-negative.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279">fdo#109279</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-none:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3536">i915#3536</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-a-edp-1-upscale-with-rotation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-a-edp-1-upscale-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-b-edp-1-upscale-with-rotation:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-b-edp-1-upscale-with-rotation.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@buffer-fill:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@perf@buffer-fill.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_pread_pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@prime_nv_test@i915_import_pread_pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@syncobj_timeline@invalid-transfer-non-existent-point.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5098">i915#5098</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@sysfs_clients@fair-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@sysfs_clients@fair-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109307">fdo#109307</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk4/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid-ring:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl6/igt@gem_exec_params@rel-constants-invalid-ring.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@gem_exec_params@rel-constants-invalid-ring.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@wide@bcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl1/igt@gem_exec_schedule@wide@bcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5725">i915#5725</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_exec_schedule@wide@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3614</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5293">i915#5293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5519">i915#5519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb4/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5614">i915#5614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5614">i915#5614</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4148">i915#4148</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11520 -&gt; Patchwork_102160v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11520: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102160v7: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8204252054382750346==--
