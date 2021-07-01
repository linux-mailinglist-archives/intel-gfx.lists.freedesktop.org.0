Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8813B8DFD
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 08:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7443689CD3;
	Thu,  1 Jul 2021 06:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BFD3A89CA4;
 Thu,  1 Jul 2021 06:58:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6A28A7DFB;
 Thu,  1 Jul 2021 06:58:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 01 Jul 2021 06:58:53 -0000
Message-ID: <162512273373.15052.945599252006171515@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701040623.1675928-1-lucas.demarchi@intel.com>
In-Reply-To: <20210701040623.1675928-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg1=3A_Compute_MEM_Bandwidth_using_MCHBAR?=
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
Content-Type: multipart/mixed; boundary="===============0707996941=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0707996941==
Content-Type: multipart/alternative;
 boundary="===============6369913597792476360=="

--===============6369913597792476360==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg1: Compute MEM Bandwidth using MCHBAR
URL   : https://patchwork.freedesktop.org/series/92094/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10295_full -> Patchwork_20501_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20501_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20501_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20501_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [PASS][2] -> [SKIP][3] +14 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - {shard-rkl}:        [SKIP][4] -> [FAIL][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs:
    - {shard-rkl}:        NOTRUN -> [FAIL][6] +14 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - {shard-rkl}:        [FAIL][9] -> [SKIP][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs:
    - {shard-rkl}:        [SKIP][11] ([i915#533]) -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement:
    - {shard-rkl}:        [SKIP][13] ([i915#3359]) -> [SKIP][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset:
    - {shard-rkl}:        NOTRUN -> [SKIP][15] +61 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - {shard-rkl}:        [SKIP][17] ([i915#1839]) -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - {shard-rkl}:        [SKIP][19] ([i915#1849]) -> [SKIP][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - {shard-rkl}:        [SKIP][21] ([i915#658]) -> [SKIP][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_20501_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][23] ([i915#3002])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl7/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#1099]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-snb6/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#280])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][26] -> [TIMEOUT][27] ([i915#2369] / [i915#3063] / [i915#3648])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [PASS][28] -> [SKIP][29] ([fdo#109271])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][30] ([i915#2842])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#2842])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#2851])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#2842])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [PASS][37] -> [DMESG-WARN][38] ([i915#118] / [i915#95])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-glk7/igt@gem_exec_gttfill@all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk2/igt@gem_exec_gttfill@all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#2190])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#307])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl5/igt@gem_mmap_gtt@big-copy-odd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl3/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#307])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][44] ([i915#2658]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl8/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#110542])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][46] ([i915#3318])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl2/igt@gem_userptr_blits@vma-merge.html
    - shard-glk:          NOTRUN -> [FAIL][47] ([i915#3318])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271]) +40 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#112306])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-iclb:         [PASS][50] -> [DMESG-WARN][51] ([i915#3698])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb2/igt@i915_pm_dc@dc5-psr.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb2/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][52] -> [FAIL][53] ([i915#454])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#1937])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][55] ([i915#2782])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@mock@fence:
    - shard-skl:          [PASS][56] -> [INCOMPLETE][57] ([i915#198])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl5/igt@i915_selftest@mock@fence.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl9/igt@i915_selftest@mock@fence.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#111615]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +328 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#3689]) +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-glk:          NOTRUN -> [SKIP][62] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +30 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][67] ([i915#1319]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl1/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#3319])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +221 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#2346] / [i915#533])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [PASS][72] -> [FAIL][73] ([i915#2346] / [i915#533])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#2346])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#2122])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-snb:          NOTRUN -> [SKIP][79] ([fdo#109271]) +200 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#111825]) +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#533]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#533])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [PASS][83] -> [DMESG-WARN][84] ([i915#180])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][85] ([fdo#108145] / [i915#265]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][86] ([fdo#108145] / [i915#265]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([fdo#108145] / [i915#265]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-d-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#3536])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-y.html

  * igt@kms_plane_lowres@pipe-d-tiling-yf:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271]) +49 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@kms_plane_lowres@pipe-d-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#658]) +6 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#658])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#658]) +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][94] -> [SKIP][95] ([fdo#109441]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-tglb:         NOTRUN -> [FAIL][96] ([i915#132] / [i915#3467])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2437]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2437])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2437])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#2530])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@prime_nv_api@i915_nv_import_vs_close:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([fdo#109291])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@prime_nv_api@i915_nv_import_vs_close.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2994]) +4 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl3/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2994])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@sema-10:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#2994]) +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][105] ([i915#2582]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@fbdev@write.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@fbdev@write.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][107] ([i915#2410]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][109] ([i915#2842]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][111] ([i915#2842]) -> [PASS][112] +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][113] ([i915#2842]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - {shard-rkl}:        [FAIL][115] -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-kbl:          [SKIP][117] ([fdo#109271]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][119] ([i915#2190]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - {shard-rkl}:        [FAIL][121] ([i915#2428]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-1/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-1/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][125] ([i915#1397]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_atomic@plane-invalid-params:
    - {shard-rkl}:        [SKIP][127] ([i915#1845]) -> [PASS][128] +4 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_atomic@plane-invalid-params.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_atomic@plane-invalid-params.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][129] ([i915#118] / [i915#95]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - {shard-rkl}:        [SKIP][131] -> [PASS][132] +12 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_color@pipe-a-gamma:
    - {shard-rkl}:        [SKIP][133] ([i915#1149]) -> [PASS][134] +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_color@pipe-a-gamma.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - {shard-rkl}:        [SKIP][135] ([fdo#112022]) -> [PASS][136] +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
    - {shard-rkl}:        [SKIP][137] ([i915#1849]) -> [PASS][138] +9 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-skl:          [DMESG-WARN][139] ([i915#1982]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][141] ([i915#180]

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/index.html

--===============6369913597792476360==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg1: Compute MEM Bandwidth using MCHBAR</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92094/">https://patchwork.freedesktop.org/series/92094/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10295_full -&gt; Patchwork_20501_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20501_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20501_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20501_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs.html">FAIL</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs.html">SKIP</a> ([i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement.html">SKIP</a> ([i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> +61 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#1839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_plane_lowres@pipe-a-tiling-y.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_plane_lowres@pipe-a-tiling-y.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20501_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl7/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-snb6/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2851])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-glk7/igt@gem_exec_gttfill@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk2/igt@gem_exec_gttfill@all.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl5/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl3/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl8/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([fdo#110542])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl2/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@gen9_exec_parse@allowed-single.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb2/igt@i915_pm_dc@dc5-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb2/igt@i915_pm_dc@dc5-psr.html">DMESG-WARN</a> ([i915#3698])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@fence:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl5/igt@i915_selftest@mock@fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl9/igt@i915_selftest@mock@fence.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +328 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html">SKIP</a> ([i915#3689]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_color_chamelium@pipe-b-degamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl1/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271]) +221 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +200 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-yf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@kms_plane_lowres@pipe-d-tiling-yf.html">SKIP</a> ([fdo#109271]) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@kms_psr@psr2_primary_blt.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl7/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@nouveau_crc@pipe-d-source-rg.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_vs_close:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb3/igt@prime_nv_api@i915_nv_import_vs_close.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl3/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl2/igt@sysfs_clients@fair-3.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl3/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@fbdev@write.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-1/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a> ([i915#2428]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-1/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-apl6/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-apl3/igt@gem_workarounds@suspend-resume-context.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_atomic@plane-invalid-params.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_atomic@plane-invalid-params.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-gamma:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_color@pipe-a-gamma.html">SKIP</a> ([i915#1149]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_color@pipe-a-gamma.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20501/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          [INCOMPLETE][141] ([i915#180]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6369913597792476360==--

--===============0707996941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0707996941==--
