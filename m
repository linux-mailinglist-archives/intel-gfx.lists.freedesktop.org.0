Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F165E53FFA2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 15:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2EB10EB74;
	Tue,  7 Jun 2022 13:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 301E810EB4F;
 Tue,  7 Jun 2022 13:01:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2564CA0BCB;
 Tue,  7 Jun 2022 13:01:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2384698476484060752=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 07 Jun 2022 13:01:44 -0000
Message-ID: <165460690411.8644.14424849488907249439@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220607094207.536699-1-jani.nikula@intel.com>
In-Reply-To: <20220607094207.536699-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/tasklet=3A_separate_l?=
 =?utf-8?q?ocal_hacks_around_struct_tasklet=5Fstruct?=
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

--===============2384698476484060752==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/tasklet: separate local hacks around struct tasklet_struct
URL   : https://patchwork.freedesktop.org/series/104812/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11730 -> Patchwork_104812v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/index.html

Participating hosts (42 -> 43)
------------------------------

  Additional (5): fi-rkl-11600 bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 
  Missing    (4): bat-adln-1 bat-jsl-2 fi-bdw-5557u fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_104812v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@nullptr:
    - bat-dg1-5:          NOTRUN -> [SKIP][1] ([i915#2582]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@fbdev@nullptr.html

  * igt@gem_huc_copy@huc-copy:
    - fi-rkl-11600:       NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][3] ([i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][4] ([i915#4083])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@gem_mmap@basic.html
    - bat-dg1-6:          NOTRUN -> [SKIP][5] ([i915#4083])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][6] ([i915#4079]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][7] ([i915#4077]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][8] ([i915#4077]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][9] ([i915#3282])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html
    - bat-dg1-5:          NOTRUN -> [SKIP][10] ([i915#4079]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-dg1-6:          NOTRUN -> [SKIP][11] ([i915#1155])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][12] ([i915#3012])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg1-5:          NOTRUN -> [SKIP][13] ([i915#1155])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          NOTRUN -> [DMESG-FAIL][14] ([i915#4494] / [i915#4957])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][15] -> [DMESG-FAIL][16] ([i915#4528])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-pnv-d510/igt@i915_selftest@live@requests.html
    - fi-blb-e6850:       [PASS][17] -> [DMESG-FAIL][18] ([i915#4528])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][19] ([i915#6011])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][20] ([i915#6011])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][21] ([i915#5982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][22] ([i915#4212]) +7 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][23] ([i915#4215])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-6:          NOTRUN -> [SKIP][24] ([i915#4215])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg1-6:          NOTRUN -> [SKIP][25] ([i915#4212]) +7 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_busy@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][26] ([i915#1845] / [i915#4303])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_busy@basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - bat-dg1-5:          NOTRUN -> [SKIP][27] ([fdo#111827]) +7 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - bat-dg1-6:          NOTRUN -> [SKIP][28] ([fdo#111827]) +7 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-rkl-11600:       NOTRUN -> [SKIP][29] ([fdo#111827]) +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-dg1-6:          NOTRUN -> [SKIP][30] ([i915#4103] / [i915#4213]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][31] ([i915#4103] / [i915#4213]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][32] ([i915#4070] / [i915#4103]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg1-5:          NOTRUN -> [SKIP][33] ([fdo#109285])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][34] ([fdo#109285] / [i915#4098])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-6:          NOTRUN -> [SKIP][35] ([fdo#109285])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-rkl-11600:       NOTRUN -> [SKIP][36] ([i915#4070] / [i915#533])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - bat-dg1-5:          NOTRUN -> [SKIP][37] ([i915#4078]) +21 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_psr@primary_page_flip:
    - fi-rkl-11600:       NOTRUN -> [SKIP][38] ([i915#1072]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_psr@primary_page_flip.html
    - bat-dg1-5:          NOTRUN -> [SKIP][39] ([i915#1072] / [i915#4078]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-dg1-6:          NOTRUN -> [SKIP][40] ([i915#1072] / [i915#4078]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-rkl-11600:       NOTRUN -> [SKIP][41] ([i915#3555] / [i915#4098])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-5:          NOTRUN -> [SKIP][42] ([i915#3555])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-6:          NOTRUN -> [SKIP][43] ([i915#3555])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg1-5:          NOTRUN -> [SKIP][44] ([i915#1845] / [i915#3708])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - bat-dg1-5:          NOTRUN -> [SKIP][45] ([i915#3708]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-dg1-6:          NOTRUN -> [SKIP][46] ([i915#3708] / [i915#4077]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@prime_vgem@basic-gtt.html
    - bat-dg1-5:          NOTRUN -> [SKIP][47] ([i915#3708] / [i915#4077]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-rkl-11600:       NOTRUN -> [SKIP][48] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-userptr:
    - bat-dg1-6:          NOTRUN -> [SKIP][49] ([i915#3708] / [i915#4873])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@prime_vgem@basic-userptr.html
    - bat-dg1-5:          NOTRUN -> [SKIP][50] ([i915#3708] / [i915#4873])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][51] ([fdo#109295] / [i915#3301] / [i915#3708])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - bat-dg1-6:          NOTRUN -> [SKIP][52] ([i915#3708]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - bat-dg1-5:          NOTRUN -> [FAIL][53] ([i915#4312] / [i915#5257])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][54] ([i915#4312] / [i915#5257])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_hangman@error-state-basic:
    - fi-skl-guc:         [DMESG-WARN][55] -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/fi-skl-guc/igt@i915_hangman@error-state-basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-skl-guc/igt@i915_hangman@error-state-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4303]: https://gitlab.freedesktop.org/drm/intel/issues/4303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011


Build changes
-------------

  * Linux: CI_DRM_11730 -> Patchwork_104812v1

  CI-20190529: 20190529
  CI_DRM_11730: 5e7f37992081d4600d6329a745ab7edb2ee42bcd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6510: dacfa80158d586cd0fe322f25f5275f224a946dd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104812v1: 5e7f37992081d4600d6329a745ab7edb2ee42bcd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5ed3630d97df drm/i915/utils: throw out unused stuff
fae797804006 drm/i915/drv: drop intel_bios.h include
7245da47cc8d drm/i915/tasklet: separate local hacks around struct tasklet_struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/index.html

--===============2384698476484060752==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915/tasklet: separate local hacks around struct tasklet_struct</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104812/">https://patchwork.freedesktop.org/series/104812/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11730 -&gt; Patchwork_104812v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/index.html</p>
<h2>Participating hosts (42 -&gt; 43)</h2>
<p>Additional (5): fi-rkl-11600 bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 <br />
  Missing    (4): bat-adln-1 bat-jsl-2 fi-bdw-5557u fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104812v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6011">i915#6011</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6011">i915#6011</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4303">i915#4303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_hangman@error-state-basic:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/fi-skl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104812v1/fi-skl-guc/igt@i915_hangman@error-state-basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11730 -&gt; Patchwork_104812v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11730: 5e7f37992081d4600d6329a745ab7edb2ee42bcd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6510: dacfa80158d586cd0fe322f25f5275f224a946dd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104812v1: 5e7f37992081d4600d6329a745ab7edb2ee42bcd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5ed3630d97df drm/i915/utils: throw out unused stuff<br />
fae797804006 drm/i915/drv: drop intel_bios.h include<br />
7245da47cc8d drm/i915/tasklet: separate local hacks around struct tasklet_struct</p>

</body>
</html>

--===============2384698476484060752==--
