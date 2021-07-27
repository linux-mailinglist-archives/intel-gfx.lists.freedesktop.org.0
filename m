Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B39D73D7ED4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 22:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE0CE6E3AA;
	Tue, 27 Jul 2021 20:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64D2B6E2B4;
 Tue, 27 Jul 2021 20:09:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D4EAAA915;
 Tue, 27 Jul 2021 20:09:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Date: Tue, 27 Jul 2021 20:09:23 -0000
Message-ID: <162741656335.18664.17834006766101213540@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1626668714-17780-1-git-send-email-ankit.k.nautiyal@intel.com>
In-Reply-To: <1626668714-17780-1-git-send-email-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_the_12_BPC_bits_for_PIPE=5FMISC_reg_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1564308086=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1564308086==
Content-Type: multipart/alternative;
 boundary="===============3507094196464031329=="

--===============3507094196464031329==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix the 12 BPC bits for PIPE_MISC reg (rev2)
URL   : https://patchwork.freedesktop.org/series/92690/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10403_full -> Patchwork_20714_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20714_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20714_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20714_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_selftest@all@damage_iter_no_damage:
    - shard-snb:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-snb7/igt@kms_selftest@all@damage_iter_no_damage.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@extended-modeset-hang-newfb-with-reset:
    - {shard-rkl}:        NOTRUN -> [SKIP][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-2/igt@kms_busy@extended-modeset-hang-newfb-with-reset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - {shard-rkl}:        [SKIP][3] ([i915#1849]) -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - {shard-rkl}:        [SKIP][5] ([i915#1845]) -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@runner@aborted:
    - {shard-rkl}:        ([FAIL][7], [FAIL][8], [FAIL][9]) ([i915#3002] / [i915#3810]) -> ([FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14]) ([i915#2029] / [i915#3002] / [i915#3621] / [i915#3810] / [i915#3811])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-5/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-2/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-1/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-2/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-2/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10403_full and Patchwork_20714_full:

### New IGT tests (1) ###

  * igt@kms_busy@extended-pageflip-hang-oldfb@pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  

Known issues
------------

  Here are the changes found in Patchwork_20714_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1099]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#2842])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#307])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#644])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][26] ([i915#2658])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@fences:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#579])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb3/igt@i915_pm_rpm@fences.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][30] -> [INCOMPLETE][31] ([i915#2782])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111614])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111615])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#2705])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3689])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl8/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl3/igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][40] ([i915#2105])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3359])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:
    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#2346])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2346] / [i915#533])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([i915#3788])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb1/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#111825]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb3/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#79])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109289])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109278])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb3/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_lowres@pipe-b-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([i915#3536])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-none.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-tglb:         NOTRUN -> [FAIL][59] ([i915#132] / [i915#3467])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][62] ([IGT#2])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl1/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-snb:          NOTRUN -> [SKIP][63] ([fdo#109271]) +359 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-snb5/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109502])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2437])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +7 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl3/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +138 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl8/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][68] -> [FAIL][69] ([i915#1542])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb6/igt@perf@polling-parameterized.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb3/igt@perf@polling-parameterized.html
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#1542])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-skl10/igt@perf@polling-parameterized.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl7/igt@perf@polling-parameterized.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][72] ([i915#2426])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-snb7/igt@runner@aborted.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-apl8/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@fbdev@info:
    - {shard-rkl}:        [SKIP][74] ([i915#2582]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-2/igt@fbdev@info.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@fbdev@info.html

  * igt@gem_eio@hibernate:
    - {shard-rkl}:        [INCOMPLETE][76] ([i915#3833]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-5/igt@gem_eio@hibernate.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-1/igt@gem_eio@hibernate.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [TIMEOUT][78] ([i915#3063]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][80] ([i915#2846]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - {shard-rkl}:        [FAIL][82] ([i915#2842]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][84] ([i915#2842]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-tglb:         [FAIL][86] ([i915#2842]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][88] ([i915#2842]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-scanout@vecs0:
    - {shard-rkl}:        [SKIP][90] ([i915#3639]) -> [PASS][91] +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - {shard-rkl}:        [INCOMPLETE][92] ([i915#3189] / [i915#3810]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [DMESG-FAIL][94] ([i915#1021]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-5/igt@i915_selftest@live@gt_pm.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-2/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - {shard-rkl}:        [SKIP][96] ([i915#3638]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][98] ([i915#118] / [i915#95]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - {shard-rkl}:        [SKIP][100] ([fdo#111614]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
    - {shard-rkl}:        [SKIP][102] ([i915#3721]) -> [PASS][103] +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [FAIL][104] ([i915#3678]) -> [PASS][105] +4 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - {shard-rkl}:        [SKIP][106] ([i915#1149] / [i915#1849]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-75.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - {shard-rkl}:        [SKIP][108] ([fdo#112022]) -> [PASS][109] +11 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - {shard-rkl}:        [SKIP][110] ([fdo#111825]) -> [PASS][111] +4 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - {shard-rkl}:        [SKIP][112] ([fdo#111314]) -> [PASS][113] +6 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][114] ([i915#146] / [i915#198]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-skl5/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [FAIL][116] ([i915#2122]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][118] ([i915#1188]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:
    - {shard-rkl}:        [SKIP][120] ([i915#3558]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][122] ([fdo#108145] / [i915#265]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
    - {shard-rkl}:        [SKIP][124] ([i915#1849]) -> [PASS][125] +21 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@primary_mmap_cpu:
    - {shard-rkl}:        [SKIP][126] ([i915#1072]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@kms_psr@primary_mmap_cpu.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_psr@primary_mmap_cpu.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][128] ([fdo#109441]) -> [PASS][129] +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:
    - shard-tglb:         [DMESG-WARN][130] ([i915#2868]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-tglb5/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb3/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset:
    - {shard-rkl}:        [SKIP][132] ([i915#1845]) -> [PASS][133] +10 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-1/igt@kms_vblank@pipe-a-ts-continuation-modeset.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][134] ([i915#2842]) -> [FAIL][135] ([i915#2852])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][136] ([i915#2842]) -> [FAIL][137] ([i915#2849])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][138] ([i915#1804] / [i915#2684]) -> [WARN][139] ([i915#2684])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][140] ([i915#2920]) -> [SKIP][141] ([i915#658]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][142] ([i915#658]) -> [SKIP][143] ([i915#2920]) +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][144], [FAIL][145]) ([i915#2426] / [i915#3002] / [i915#3363]) -> ([FAIL][146], [FAIL][147]) ([i915#2426] / [i915#2505] / [i915#3002] / [i915#3363])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-kbl1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-kbl1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-kbl4/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][148], [FAIL][149]) ([i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][150], [FAIL][151], [FAIL][152]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-apl3/igt@runner@aborted.html
   [149]: https:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/index.html

--===============3507094196464031329==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix the 12 BPC bits for PIPE_MISC =
reg (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/92690/">https://patchwork.freedesktop.org/series/92690/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20714/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20714/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10403_full -&gt; Patchwork_20714_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20714_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20714_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20714_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_selftest@all@damage_iter_no_damage:<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-snb7/igt@kms_selftest@all@damage_iter_n=
o_damage.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_busy@extended-modeset-hang-newfb-with-reset:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-rkl-2/igt@kms_busy@extended-modeset-han=
g-newfb-with-reset.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.ht=
ml">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-c=
rc-pipe-b.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspen=
d.html">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continua=
tion-dpms-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10403/shard-rkl-1/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-rkl-5/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-2/igt@runner@aborted.html">FAIL</a>) ([i915#3002] /=
 [i915#3810]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20714/shard-rkl-1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-2/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20714/shard-rkl-2/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20714/shard-rkl-6/igt@runner@aborted.html">FAIL</a>) ([=
i915#2029] / [i915#3002] / [i915#3621] / [i915#3810] / [i915#3811])</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10403_full and Patchwork_2=
0714_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_busy@extended-pageflip-hang-oldfb@pipe-b:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20714_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/sh=
ard-glk2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/s=
hard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/s=
hard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714=
/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a> ([i915#307]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_207=
14/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#=
644])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl8/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-apl3/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20714/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">DMESG-WA=
RN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb3/igt@i915_pm_rpm@fences.html">SKIP=
</a> ([i915#579])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/sha=
rd-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotat=
e-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-180-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_big_joiner@invalid-modese=
t.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_ccs@pipe-c-missing-ccs-bu=
ffer-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl8/igt@kms_chamelium@hdmi-crc-fast.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-skl3/igt@kms_color_chamelium@pipe-inval=
id-gamma-lut-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl8/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-1=
28x128-offscreen.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20714/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic=
-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20714/shard-skl6/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb1/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20714/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-=
a.html">SKIP</a> ([i915#3788])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb3/igt@kms_flip@2x-flip-vs-wf_vblank=
-interruptible.html">SKIP</a> ([fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20714/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-=
off-modeset-pipe-c.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl8/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb3/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-prem=
ult-vs-constant.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-iclb2/igt@kms_plane_alpha_blend@pipe-c-=
coverage-vs-premult-vs-constant.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_plane_lowres@pipe-b-tilin=
g-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl8/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_psr@psr2_sprite_blt.html"=
>FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/sh=
ard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl1/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-snb5/igt@kms_universal_plane@disable-pr=
imary-vs-flip-pipe-d.html">SKIP</a> ([fdo#109271]) +359 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-tglb5/igt@kms_vrr@flip-suspend.html">SK=
IP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl1/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-skl3/igt@nouveau_crc@pipe-a-source-outp=
-inactive.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl8/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> ([fdo#109271]) +138 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10403/shard-iclb6/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard=
-iclb3/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10403/shard-skl10/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard=
-skl7/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-snb7/igt@runner@aborted.html">FAIL</a> =
([i915#2426])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-apl8/igt@sysfs_clients@split-25.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-2/igt@fbdev@info.html">SKIP</a> ([i915#2582]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-=
rkl-6/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-5/igt@gem_eio@hibernate.html">INCOMPLETE</a> ([i915=
#3833]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20714/shard-rkl-1/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html">TI=
MEOUT</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20714/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20714/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20714/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10403/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20714/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1=
 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10403/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20714/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
+1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20714/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html">SKIP=
</a> ([i915#3639]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20714/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html">=
PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html">INCOM=
PLETE</a> ([i915#3189] / [i915#3810]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@gem_exec_suspend@basic=
-s4-devices.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-5/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a>=
 ([i915#1021]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20714/shard-rkl-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-180.html">SKIP<=
/a> ([i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20714/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-180.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20714/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-ro=
tate-0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SKI=
P</a> ([fdo#111614]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20714/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180.html">SKIP</a> ([i915#3721]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_til=
ed_gen12_rc_ccs_cc.html">FAIL</a> ([i915#3678]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_ccs@pipe=
-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +4 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-75.html">SKIP</a> ([i9=
15#1149] / [i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20714/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.h=
tml">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-12=
8x42-sliding.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.h=
tml">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-curso=
r-crc-atomic.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-render-u=
ntiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_draw_crc@draw-metho=
d-xrgb2101010-render-untiled.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-skl5/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLE=
TE</a> ([i915#146] / [i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20714/shard-skl10/igt@kms_flip@flip-vs-suspend@b-=
edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-e=
dp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20714/shard-skl8/igt@kms_flip@plain-flip-ts-check=
-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#=
1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20714/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right@pipe-b-p=
lanes.html">SKIP</a> ([i915#3558]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_plane@plane-panning-b=
ottom-right@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10403/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20714/shard-skl1/igt@kms_plane_alpha_blend@=
pipe-c-coverage-7efc.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10403/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-c-cover=
age-7efc.html">PASS</a> +21 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-1/igt@kms_psr@primary_mmap_cpu.html">SKIP</a> ([i91=
5#1072]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20714/shard-rkl-6/igt@kms_psr@primary_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20714/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a=
> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-tglb5/igt@kms_universal_plane@disable-primary-vs-flip-p=
ipe-a.html">DMESG-WARN</a> ([i915#2868]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20714/shard-tglb3/igt@kms_universal_plane=
@disable-primary-vs-flip-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-rkl-1/igt@kms_vblank@pipe-a-ts-continuation-modeset.htm=
l">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20714/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-=
modeset.html">PASS</a> +10 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20714/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20714/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FA=
IL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20714/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.=
html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
5.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20714/shard-iclb8/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-5.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-4.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20714/shard-iclb2/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10403/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>) ([i915#2426] / [i915#3002] / [i915#3363]) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20714/shard-kbl4/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20714/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([=
i915#2426] / [i915#2505] / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10403/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s:">FAIL</a>) ([i915#180] / [i915#3002] / [i915#3363]) -&gt; ([FAIL][150], =
[FAIL][151], [FAIL][152]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#=
3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3507094196464031329==--

--===============1564308086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1564308086==--
