Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A234CB666
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 06:29:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B276610EC6A;
	Thu,  3 Mar 2022 05:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACA3910EC80;
 Thu,  3 Mar 2022 05:29:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8746A00E8;
 Thu,  3 Mar 2022 05:29:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8994780776797029083=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Thu, 03 Mar 2022 05:29:36 -0000
Message-ID: <164628537667.19859.870004477291522601@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220302182657.1483623-1-fei.yang@intel.com>
In-Reply-To: <20220302182657.1483623-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_concurrent_writes_to_aux=5Finv_=28rev3=29?=
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

--===============8994780776797029083==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: avoid concurrent writes to aux_inv (rev3)
URL   : https://patchwork.freedesktop.org/series/100772/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11313_full -> Patchwork_22465_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22465_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22465_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22465_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
    - {shard-rkl}:        NOTRUN -> [SKIP][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11313_full and Patchwork_22465_full:

### New IGT tests (1) ###

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:
    - Statuses : 1 pass(s)
    - Exec time: [1.28] s

  

Known issues
------------

  Here are the changes found in Patchwork_22465_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][4] ([i915#4991])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl8/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#232])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][7] ([i915#5076])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl3/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][8] ([i915#4547])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl4/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271]) +9 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +46 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@gem_exec_fair@basic-pace@bcs0.html
    - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#118])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][20] -> [SKIP][21] ([i915#2190])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1436] / [i915#716])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl4/igt@gen9_exec_parse@allowed-all.html
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#1436] / [i915#716])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#2527] / [i915#2856])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-no-display:
    - shard-tglb:         [PASS][28] -> [DMESG-WARN][29] ([i915#2867])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb3/igt@i915_module_load@reload-no-display.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb2/igt@i915_module_load@reload-no-display.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#4939])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl7/igt@i915_suspend@debugfs-reader.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#2521])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][38] ([i915#1319])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_content_protection@lic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2346])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][41] -> [INCOMPLETE][42] ([i915#180] / [i915#1982])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#2122]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#1188])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][51] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:
    - shard-snb:          NOTRUN -> [SKIP][57] ([fdo#109271]) +8 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180] / [i915#295])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2437])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#1722])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl4/igt@perf@polling-small-buf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl4/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2994]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-wakeup:
    - {shard-rkl}:        ([PASS][64], [SKIP][65]) ([i915#1845] / [i915#4098]) -> [PASS][66]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-4/igt@drm_read@short-buffer-wakeup.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html

  * igt@fbdev@pan:
    - {shard-rkl}:        [SKIP][67] ([i915#2582]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@fbdev@pan.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@fbdev@pan.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][69] ([i915#232]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb2/igt@gem_eio@kms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][71] ([i915#2481] / [i915#3070]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb5/igt@gem_eio@unwedge-stress.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          [INCOMPLETE][73] ([i915#4547]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl9/igt@gem_exec_capture@pi@vcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl4/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_capture@pi@vecs0:
    - {shard-rkl}:        [INCOMPLETE][75] ([i915#3371]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@gem_exec_capture@pi@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-2/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][77] ([i915#2842]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][79] ([i915#2842]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][81] ([i915#2842]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_pm_backlight@basic-brightness:
    - {shard-rkl}:        [SKIP][83] ([i915#3012]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][85] ([i915#1397]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-dg1}:        [SKIP][87] ([i915#1397]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][89] ([i915#3921]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_atomic@atomic_plane_damage:
    - {shard-rkl}:        [SKIP][91] ([i915#4098]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_atomic@atomic_plane_damage.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_atomic@plane-primary-legacy:
    - {shard-rkl}:        [SKIP][93] ([i915#1845]) -> [PASS][94] +19 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@kms_atomic@plane-primary-legacy.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_atomic@plane-primary-legacy.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][95] ([i915#118]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][97] ([i915#1845] / [i915#4098]) -> [PASS][98] +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - {shard-rkl}:        [SKIP][99] ([i915#1149] / [i915#1849]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_color@pipe-c-invalid-degamma-lut-sizes:
    - {shard-rkl}:        [SKIP][101] ([i915#4070]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-2/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - {shard-rkl}:        [SKIP][103] ([fdo#112022]) -> [PASS][104] +5 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - {shard-rkl}:        [SKIP][105] ([fdo#112022] / [i915#4070]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:
    - {shard-rkl}:        [SKIP][109] ([i915#1849] / [i915#4070]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - {shard-rkl}:        [SKIP][111] ([fdo#111825]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - {shard-rkl}:        ([SKIP][113], [PASS][114]) ([fdo#111825]) -> [PASS][115]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         [FAIL][116] ([i915#2346]) -> [PASS][117] +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
    - {shard-rkl}:        [SKIP][118] ([fdo#111825] / [i915#4070]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - {shard-rkl}:        ([SKIP][120], [SKIP][121]) ([fdo#111314] / [i915#4098]) -> [PASS][122]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - {shard-rkl}:        [SKIP][123] ([fdo#111314]) -> [PASS][124] +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][125] ([i915#180]) -> [PASS][126] +3 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][127] ([i915#2122]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [SKIP][129] ([i915#3701]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [FAIL][131] ([i915#4911]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - {shard-rkl}:        [INCOMPLETE][133] ([i915#3701]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][135] ([i915#1849]) -> [PASS][136] +25 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][137] ([i915#1188]) -> [PASS][138] +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_invalid_mode@uint-max-clock:
    - {shard-rkl}:        [SKIP][139] ([i915#4278]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_invalid_mode@uint-max-clock.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - {shard-rkl}:        [SKIP][141] ([i915#1849] / [i915#3558]) -> [PASS][142] +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_plane@pixel-format@pipe-a-planes.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][143] ([fdo#108145] / [i915#265]) -> [PASS][144] +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * {igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format}:
    - shard-iclb:         [INCOMPLETE][145] -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb7/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html

  * {igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale}:
    - shard-iclb:         [SKIP][147] -> [PASS][148] +2 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb3/igt@kms_plane_scaling@plan

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/index.html

--===============8994780776797029083==
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
<tr><td><b>Series:</b></td><td>drm/i915: avoid concurrent writes to aux_inv (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100772/">https://patchwork.freedesktop.org/series/100772/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11313_full -&gt; Patchwork_22465_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22465_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22465_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22465_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11313_full and Patchwork_22465_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.28] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22465_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl8/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl3/igt@gem_exec_balancer@parallel-out-fence.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl4/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">SKIP</a> ([fdo#109271]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@gem_exec_fair@basic-pace@bcs0.html">SKIP</a> ([fdo#109271]) +46 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl3/igt@gem_exec_fair@basic-pace@bcs0.html">SKIP</a> ([fdo#109271])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl4/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl2/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb3/igt@i915_module_load@reload-no-display.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb2/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> ([i915#2867])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl7/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl7/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> ([i915#4939])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html">SKIP</a> ([fdo#109271]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl4/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl4/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl1/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-wakeup:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-4/igt@drm_read@short-buffer-wakeup.html">SKIP</a>) ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@fbdev@pan.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@fbdev@pan.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-tglb2/igt@gem_eio@kms.html">FAIL</a> ([i915#232]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-tglb7/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl9/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#4547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl4/igt@gem_exec_capture@pi@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#3371]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-2/igt@gem_exec_capture@pi@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-snb4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-snb6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_atomic@atomic_plane_damage.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_atomic@atomic_plane_damage.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@kms_atomic@plane-primary-legacy.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_atomic@plane-primary-legacy.html">PASS</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_color@pipe-a-ctm-red-to-blue.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_color@pipe-a-ctm-red-to-blue.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-degamma-lut-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-2/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a>) ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html">SKIP</a>) ([fdo#111314] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">INCOMPLETE</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html">PASS</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-rkl-5/igt@kms_plane@pixel-format@pipe-a-planes.html">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb7/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11313/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22465/shard-iclb3/igt@kms_plane_scaling@plan">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8994780776797029083==--
