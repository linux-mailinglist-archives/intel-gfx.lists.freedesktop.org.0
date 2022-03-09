Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAD24D2970
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 08:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC0D510E2C8;
	Wed,  9 Mar 2022 07:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4F7110E125;
 Wed,  9 Mar 2022 07:26:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EECAA363D;
 Wed,  9 Mar 2022 07:26:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3236727987109377590=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 09 Mar 2022 07:26:17 -0000
Message-ID: <164681077759.14948.6227578783380613341@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220308154136.406578-1-jose.souza@intel.com>
In-Reply-To: <20220308154136.406578-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_Revert_=22drm/i915/edp=3A_Ignore_sh?=
 =?utf-8?q?ort_pulse_when_panel_powered_off=22?=
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

--===============3236727987109377590==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] Revert "drm/i915/edp: Ignore short pulse when panel powered off"
URL   : https://patchwork.freedesktop.org/series/101162/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11337_full -> Patchwork_22513_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22513_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22513_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22513_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@pipe-b-forked-bo:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-kbl7/igt@kms_cursor_legacy@pipe-b-forked-bo.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl6/igt@kms_cursor_legacy@pipe-b-forked-bo.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {shard-rkl}:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-5/igt@i915_selftest@live@execlists.html

  * {igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a}:
    - shard-skl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl7/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl9/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html

  * {igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a}:
    - shard-skl:          NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html

  * igt@kms_hdr@static-toggle-suspend:
    - {shard-dg1}:        NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-dg1-15/igt@kms_hdr@static-toggle-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_22513_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#232])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#3371])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb1/igt@gem_exec_capture@pi@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb1/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][15] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_schedule@u-submit-golden-slice@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][20] ([i915#3797])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl2/igt@gem_exec_schedule@u-submit-golden-slice@vecs0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([i915#1895])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb3/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4613])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#4613])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-snb:          [PASS][26] -> [DMESG-FAIL][27] ([i915#4998])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-snb2/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-skl:          NOTRUN -> [DMESG-WARN][28] ([i915#1982])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271]) +63 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl6/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109289])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@gen7_exec_parse@batch-without-end.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#658])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][34] -> [DMESG-WARN][35] ([i915#118])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-glk1/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][36] ([i915#3743]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#3116])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb3/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@uevent:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109300] / [fdo#111066])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271]) +38 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2346])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][50] ([i915#79])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][51] ([i915#180])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2122]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1:
    - shard-apl:          [PASS][54] -> [FAIL][55] ([i915#2122])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-apl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109280])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([fdo#108145] / [i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-alpha-7efc:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109278])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-alpha-7efc.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109642] / [fdo#111068] / [i915#658])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][67] -> [SKIP][68] ([fdo#109441])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_psr@psr2_dpms.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +89 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][70] -> [FAIL][71] ([i915#31])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-apl7/igt@kms_setmode@basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@sysfs_clients@fair-0:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@sema-10:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2994]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@sysfs_clients@sema-10.html

  * igt@sysfs_clients@split-25:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#2994])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@sysfs_clients@split-25.html

  * igt@sysfs_preempt_timeout@timeout@rcs0:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([i915#3259])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl7/igt@sysfs_preempt_timeout@timeout@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl4/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {shard-rkl}:        ([SKIP][78], [SKIP][79]) ([i915#2582]) -> [PASS][80]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@fbdev@read.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@fbdev@read.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@fbdev@read.html

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][81] ([i915#658]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@feature_discovery@psr1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - {shard-dg1}:        [FAIL][83] ([fdo#103375]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-dg1-13/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@smoketest:
    - {shard-rkl}:        [FAIL][85] ([i915#5099]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@gem_ctx_persistence@smoketest.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-2/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-glk:          [DMESG-WARN][87] ([i915#118]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-glk4/igt@gem_ctx_shared@q-smoketest-all.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-glk1/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@in-flight-suspend:
    - {shard-rkl}:        [FAIL][89] ([fdo#103375]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@gem_eio@in-flight-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][91] ([i915#4525]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_endless@dispatch@vcs1:
    - shard-tglb:         [INCOMPLETE][93] ([i915#3778]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb7/igt@gem_exec_endless@dispatch@vcs1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb2/igt@gem_exec_endless@dispatch@vcs1.html
    - {shard-tglu}:       [INCOMPLETE][95] ([i915#3778]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglu-2/igt@gem_exec_endless@dispatch@vcs1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglu-1/igt@gem_exec_endless@dispatch@vcs1.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][97] ([i915#2842]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-tglu}:       [FAIL][99] ([i915#2842]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - {shard-rkl}:        ([FAIL][101], [PASS][102]) ([i915#2842]) -> [PASS][103]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][104] ([i915#2842]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fence@syncobj-wait:
    - shard-skl:          [DMESG-WARN][106] ([i915#1982]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl5/igt@gem_exec_fence@syncobj-wait.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl1/igt@gem_exec_fence@syncobj-wait.html

  * igt@gem_exec_schedule@u-submit-golden-slice@rcs0:
    - shard-skl:          [INCOMPLETE][108] ([i915#3797]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl2/igt@gem_exec_schedule@u-submit-golden-slice@rcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl2/igt@gem_exec_schedule@u-submit-golden-slice@rcs0.html

  * igt@gem_exec_schedule@u-submit-golden-slice@vcs1:
    - {shard-dg1}:        [INCOMPLETE][110] -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-dg1-15/igt@gem_exec_schedule@u-submit-golden-slice@vcs1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-dg1-13/igt@gem_exec_schedule@u-submit-golden-slice@vcs1.html

  * igt@gem_mmap_wc@set-cache-level:
    - {shard-rkl}:        [SKIP][112] ([i915#1850]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][114] ([i915#4171]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-glk8/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_tiled_swapping@non-threaded:
    - {shard-rkl}:        ([PASS][116], [INCOMPLETE][117]) -> [PASS][118]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@gem_tiled_swapping@non-threaded.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@gem_tiled_swapping@non-threaded.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-2/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_backlight@fade:
    - {shard-rkl}:        ([SKIP][119], [SKIP][120]) ([i915#3012]) -> [PASS][121]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@i915_pm_backlight@fade.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@i915_pm_backlight@fade.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@i915_pm_backlight@fade.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][122] ([fdo#109308]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-rkl}:        [SKIP][124] ([i915#1397]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rps@min-max-config-idle:
    - {shard-rkl}:        [FAIL][126] ([i915#4016]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-2/igt@i915_pm_rps@min-max-config-idle.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-5/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-tglu}:       [DMESG-FAIL][128] ([i915#3987]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglu-6/igt@i915_selftest@live@gt_pm.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglu-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - {shard-dg1}:        [DMESG-FAIL][130] ([i915#4494] / [i915#4957]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-dg1-19/igt@i915_selftest@live@hangcheck.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-dg1-19/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - {shard-tglu}:       [DMESG-WARN][132] ([i915#402]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglu-3/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglu-2/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - {shard-rkl}:        ([SKIP][134], [SKIP][135]) ([i915#1845]) -> [PASS][136] +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][137] ([i915#1845] / [i915#4098]) -> [PASS][138] +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - {shard-rkl}:        [SKIP][139] ([i915#1149] / [i915#1849]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@kms_color@pipe-b-ctm-0-5.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - {shard-rkl}:        [SKIP][141] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@kms_color@pipe-b-ctm-green-to-red.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_color@pipe-b-legacy-gamma-reset:
    - {shard-rkl}:        [SKIP][143] ([i915#1849] / [i915#4070]) -> [PASS][144] +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@kms_color@pipe-b-legacy-gamma-reset.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma-reset.html

  * igt@kms_color@pipe-c-invalid-degamma-lut-sizes:
    - {shard-rkl}:        [SKIP][145] ([i915#4070]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-2/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - {shard-rkl}:        [SKIP][147] ([fdo#112022] / [i915#4070]) -> [PASS][148] +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - {shard-rkl}:        [SKIP][149] ([fdo#112022]) -> [PASS][150] +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [150]: https://intel-gfx-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/index.html

--===============3236727987109377590==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] Revert &quot;drm/i915/edp: Ignore short pulse when panel powered off&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101162/">https://patchwork.freedesktop.org/series/101162/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11337_full -&gt; Patchwork_22513_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22513_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22513_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22513_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_legacy@pipe-b-forked-bo:<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-kbl7/igt@kms_cursor_legacy@pipe-b-forked-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl6/igt@kms_cursor_legacy@pipe-b-forked-bo.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-5/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl7/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl9/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a}:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-dg1-15/igt@kms_hdr@static-toggle-suspend.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22513_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb8/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb1/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb1/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-submit-golden-slice@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl2/igt@gem_exec_schedule@u-submit-golden-slice@vecs0.html">INCOMPLETE</a> ([i915#3797])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb3/igt@gem_exec_whisper@basic-fds-forked-all.html">INCOMPLETE</a> ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-snb2/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html">DMESG-FAIL</a> ([i915#4998])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl6/igt@gen7_exec_parse@basic-offset.html">SKIP</a> ([fdo#109271]) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@gen7_exec_parse@batch-without-end.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-apl6/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl3/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-glk1/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_color_chamelium@pipe-b-ctm-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-negative.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb3/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_content_protection@uevent.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-apl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-7efc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-alpha-7efc.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html">SKIP</a> ([fdo#109271]) +89 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-apl7/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl7/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl3/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb8/igt@sysfs_clients@split-25.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl7/igt@sysfs_preempt_timeout@timeout@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl4/igt@sysfs_preempt_timeout@timeout@rcs0.html">FAIL</a> ([i915#3259])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@fbdev@read.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@fbdev@read.html">SKIP</a>) ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@feature_discovery@psr1.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-dg1-13/igt@gem_ctx_isolation@preservation-s3@vecs0.html">FAIL</a> ([fdo#103375]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#5099]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-2/igt@gem_ctx_persistence@smoketest.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-glk4/igt@gem_ctx_shared@q-smoketest-all.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-glk1/igt@gem_ctx_shared@q-smoketest-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@gem_eio@in-flight-suspend.html">FAIL</a> ([fdo#103375]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-1/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs1:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb7/igt@gem_exec_endless@dispatch@vcs1.html">INCOMPLETE</a> ([i915#3778]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb2/igt@gem_exec_endless@dispatch@vcs1.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglu-2/igt@gem_exec_endless@dispatch@vcs1.html">INCOMPLETE</a> ([i915#3778]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglu-1/igt@gem_exec_endless@dispatch@vcs1.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-wait:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl5/igt@gem_exec_fence@syncobj-wait.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl1/igt@gem_exec_fence@syncobj-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-submit-golden-slice@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-skl2/igt@gem_exec_schedule@u-submit-golden-slice@rcs0.html">INCOMPLETE</a> ([i915#3797]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-skl2/igt@gem_exec_schedule@u-submit-golden-slice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-submit-golden-slice@vcs1:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-dg1-15/igt@gem_exec_schedule@u-submit-golden-slice@vcs1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-dg1-13/igt@gem_exec_schedule@u-submit-golden-slice@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> ([i915#1850]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</a> ([i915#4171]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-glk8/igt@gem_softpin@allocator-evict-all-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@gem_tiled_swapping@non-threaded.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@gem_tiled_swapping@non-threaded.html">INCOMPLETE</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-2/igt@gem_tiled_swapping@non-threaded.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@i915_pm_backlight@fade.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@i915_pm_backlight@fade.html">SKIP</a>) ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@i915_pm_backlight@fade.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-2/igt@i915_pm_rps@min-max-config-idle.html">FAIL</a> ([i915#4016]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-5/igt@i915_pm_rps@min-max-config-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglu-6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#3987]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglu-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-dg1-19/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> ([i915#4494] / [i915#4957]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-dg1-19/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-tglu-3/igt@kms_big_fb@linear-16bpp-rotate-0.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-tglu-2/igt@kms_big_fb@linear-16bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-5:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@kms_color@pipe-b-ctm-0-5.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-5.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-green-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@kms_color@pipe-b-ctm-green-to-red.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to-red.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-legacy-gamma-reset:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@kms_color@pipe-b-legacy-gamma-reset.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma-reset.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-degamma-lut-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-2/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22513/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11337/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3236727987109377590==--
