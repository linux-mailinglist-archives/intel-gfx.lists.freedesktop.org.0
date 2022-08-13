Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEA859FE4F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 17:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2256710EEAF;
	Wed, 24 Aug 2022 15:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 900719616B;
 Sat, 13 Aug 2022 00:27:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86339AADD3;
 Sat, 13 Aug 2022 00:27:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4438204564512983186=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Date: Sat, 13 Aug 2022 00:27:03 -0000
Message-ID: <166035042350.14325.15224566793265596048@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220812173715.2398586-1-badal.nilawar@intel.com>
In-Reply-To: <20220812173715.2398586-1-badal.nilawar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_HWMON_support_=28rev3=29?=
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

--===============4438204564512983186==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add HWMON support (rev3)
URL   : https://patchwork.freedesktop.org/series/104278/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11986_full -> Patchwork_104278v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_104278v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_104278v3_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104278v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@cursor:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb2/igt@i915_pm_rpm@cursor.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb4/igt@i915_pm_rpm@cursor.html

  
Known issues
------------

  Here are the changes found in Patchwork_104278v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#6268])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-10ms:
    - shard-tglb:         [PASS][7] -> [TIMEOUT][8] ([i915#3063])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglb7/igt@gem_eio@in-flight-10ms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglb3/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#5784])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglb7/igt@gem_eio@kms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#4525]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb4/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][17] -> [SKIP][18] ([fdo#109271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#2849])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +11 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@gem_exec_params@no-blt.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][23] ([i915#2658])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +53 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl8/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#5129])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#454])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#2521])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglb7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#2521])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-glk:          NOTRUN -> [SKIP][35] ([fdo#109271]) +38 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][40] ([i915#1319])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][41] -> [INCOMPLETE][42] ([i915#180] / [i915#1982] / [i915#4939])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#2672]) +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#3555])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#2672] / [i915#3555]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#4939])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][48] ([fdo#108145] / [i915#265])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][51] ([i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-glk:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@sysfs_clients@fair-1:
    - shard-glk:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2994])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@sysfs_clients@fair-1.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-nonblock:
    - {shard-rkl}:        [SKIP][56] ([i915#4098]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@drm_read@short-buffer-nonblock.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][58] ([i915#2582]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@fbdev@unaligned-read.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-tglu}:       [FAIL][60] ([i915#6268]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-rkl}:        [SKIP][62] ([i915#6259]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-1/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][64] ([i915#4525]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb8/igt@gem_exec_balancer@parallel.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - {shard-rkl}:        [SKIP][66] ([i915#6247]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-1/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][68] ([i915#2842]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-tglu}:       [FAIL][70] ([i915#2842]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][72] ([i915#2851]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - {shard-rkl}:        [SKIP][74] ([i915#6251]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@gem_exec_fence@basic-wait@bcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_exec_reloc@basic-wc:
    - {shard-rkl}:        [SKIP][76] ([i915#3281]) -> [PASS][77] +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@gem_exec_reloc@basic-wc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-5/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - {shard-rkl}:        [INCOMPLETE][78] ([i915#3692]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-2/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_pread@bench:
    - {shard-rkl}:        [SKIP][80] ([i915#3282]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@gem_pread@bench.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-5/igt@gem_pread@bench.html

  * igt@gen9_exec_parse@bb-start-far:
    - {shard-rkl}:        [SKIP][82] ([i915#2527]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@gen9_exec_parse@bb-start-far.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][84] ([i915#6258]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-2/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_backlight@fade:
    - {shard-rkl}:        [SKIP][86] ([i915#3012]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@i915_pm_backlight@fade.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_backlight@fade.html

  * igt@i915_pm_dc@dc5-psr:
    - {shard-rkl}:        [SKIP][88] ([i915#658]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@i915_pm_dc@dc5-psr.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-rkl}:        [SKIP][90] ([i915#3361]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-1/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-dg1}:        [SKIP][92] ([i915#1937]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-dg1-12/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - {shard-dg1}:        [SKIP][94] ([i915#1397]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][96] ([i915#1397]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][98] ([fdo#109308]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@i915_pm_rpm@pm-tiling.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@i915_pm_rps@waitboost:
    - {shard-rkl}:        [FAIL][100] ([i915#4016]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@i915_pm_rps@waitboost.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][102] ([i915#2346]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - {shard-rkl}:        [SKIP][104] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][105] +11 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][106] ([i915#79]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - {shard-rkl}:        [SKIP][112] ([i915#1849] / [i915#4098]) -> [PASS][113] +27 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - {shard-rkl}:        [SKIP][114] ([i915#1849] / [i915#3558]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@kms_plane@pixel-format@pipe-a-planes.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:
    - {shard-rkl}:        [SKIP][116] ([i915#3558]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:
    - {shard-rkl}:        [SKIP][118] ([i915#1849] / [i915#3546] / [i915#4070] / [i915#4098]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - {shard-rkl}:        [SKIP][120] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_properties@plane-properties-atomic:
    - {shard-rkl}:        [SKIP][122] ([i915#1849]) -> [PASS][123] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@kms_properties@plane-properties-atomic.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][124] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][126] ([fdo#109441]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@sprite_plane_onoff:
    - {shard-rkl}:        [SKIP][128] ([i915#1072]) -> [PASS][129] +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@kms_psr@sprite_plane_onoff.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
    - {shard-rkl}:        [SKIP][130] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html

  * igt@kms_vblank@pipe-b-query-idle:
    - {shard-rkl}:        [SKIP][132] ([i915#1845] / [i915#4098]) -> [PASS][133] +38 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@kms_vblank@pipe-b-query-idle.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][134] ([fdo#109289]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@polling:
    - {shard-rkl}:        [FAIL][136] ([i915#5639]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@perf@polling.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@perf@polling.html

  * igt@perf@stress-open-close:
    - shard-glk:          [INCOMPLETE][138] ([i915#5213]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-glk3/igt@perf@stress-open-close.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@perf@stress-open-close.html

  * igt@prime_vgem@basic-fence-flip:
    - {shard-rkl}:        [SKIP][140] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@prime_vgem@basic-fence-flip.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html

  * igt@vgem_basic@unload:
    - {shard-rkl}:        [SKIP][142] -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@vgem_basic@unload.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-1/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][144] ([i915#4525]) -> [FAIL][145] ([i915#6117])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][146] ([i915#658]) -> [SKIP][147] ([i915#588])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          [SKIP][148] ([fdo#109271] / [i915#1888] / [i915#3886]) -> [SKIP][149] ([fdo#109271] / [i915#3886])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][150] ([i915#2122]) -> [FAIL][151] ([i915#79])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-skl:          [SKIP][152] ([fdo#109271] / [i915#1888]) -> [SKIP][153] ([fdo#109271])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][154] ([i915#2920]) -> [SKIP][155] ([i915#658])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][156] ([fdo#111068] / [i915#658]) -> [SKIP][157] ([i915#2920])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3692]: https://gitlab.freedesktop.org/drm/intel/issues/3692
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5129]: https://gitlab.freedesktop.org/drm/intel/issues/5129
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11986 -> Patchwork_104278v3

  CI-20190529: 20190529
  CI_DRM_11986: 1cb5379e17f93685065d8ec54444f1baf9386ffe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6623: c8edfca649da71b296d882bb0319181d94e619eb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104278v3: 1cb5379e17f93685065d8ec54444f1baf9386ffe @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/index.html

--===============4438204564512983186==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add HWMON support (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104278/">https://patchwork.freedesktop.org/series/104278/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11986_full -&gt; Patchwork_104278v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104278v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_104278v3_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_104278v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@cursor:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb2/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb4/igt@i915_pm_rpm@cursor.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104278v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglb7/igt@gem_eio@in-flight-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglb3/igt@gem_eio@in-flight-10ms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglb2/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb4/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@gem_exec_params@no-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl8/igt@gem_pxp@create-regular-context-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5129">i915#5129</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-apl6/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl4/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglb7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@kms_chamelium@dp-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl8/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@sysfs_clients@fair-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@drm_read@short-buffer-nonblock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@fbdev@unaligned-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6259">i915#6259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-1/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@gem_exec_balancer@parallel.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6247">i915#6247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-1/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2851">i915#2851</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@gem_exec_fence@basic-wait@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6251">i915#6251</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@gem_exec_fence@basic-wait@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@gem_exec_reloc@basic-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-5/igt@gem_exec_reloc@basic-wc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctxn.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3692">i915#3692</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-2/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@gem_pread@bench.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-5/igt@gem_pread@bench.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#6258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-2/igt@i915_hangman@engine-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@i915_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_backlight@fade.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@i915_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-1/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-dg1-12/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@i915_pm_rps@waitboost.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4016">i915#4016</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@i915_pm_rps@waitboost.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111314">fdo#111314</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">PASS</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@kms_plane@pixel-format@pipe-a-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3558">i915#3558</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3558">i915#3558</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3558">i915#3558</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@kms_properties@plane-properties-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb8/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@kms_vblank@pipe-b-query-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@perf@gen12-unprivileged-single-ctx-counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-1/igt@perf@polling.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-glk3/igt@perf@stress-open-close.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-glk5/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-rkl-5/igt@vgem_basic@unload.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-rkl-1/igt@vgem_basic@unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6117">i915#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-skl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v3/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11986 -&gt; Patchwork_104278v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11986: 1cb5379e17f93685065d8ec54444f1baf9386ffe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6623: c8edfca649da71b296d882bb0319181d94e619eb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104278v3: 1cb5379e17f93685065d8ec54444f1baf9386ffe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4438204564512983186==--
