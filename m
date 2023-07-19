Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD6E759AA5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 18:20:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563F810E0E7;
	Wed, 19 Jul 2023 16:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C455810E0DD;
 Wed, 19 Jul 2023 16:20:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF582A7DFF;
 Wed, 19 Jul 2023 16:20:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0304584459622485574=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 19 Jul 2023 16:20:19 -0000
Message-ID: <168978361975.20709.4182024285493617125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230719104833.25366-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230719104833.25366-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Start_using_plane_scale_factor_for_relative_data_rate_?=
 =?utf-8?b?KHJldjMp?=
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

--===============0304584459622485574==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Start using plane scale factor for relative data rate (rev3)
URL   : https://patchwork.freedesktop.org/series/120767/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13395_full -> Patchwork_120767v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_120767v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_120767v3_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_120767v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1:
    - shard-snb:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-snb2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-glk:          NOTRUN -> [TIMEOUT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_vblank@pipe-c-wait-idle-hang:
    - shard-glk:          [PASS][4] -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@kms_vblank@pipe-c-wait-idle-hang.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@kms_vblank@pipe-c-wait-idle-hang.html

  
#### Warnings ####

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - shard-glk:          [SKIP][6] ([fdo#109271]) -> [TIMEOUT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13395_full and Patchwork_120767v3_full:

### New IGT tests (8) ###

  * igt@kms_flip@blocking-absolute-wf_vblank@a-hdmi-a4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@blocking-absolute-wf_vblank@b-hdmi-a4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@blocking-absolute-wf_vblank@c-hdmi-a4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@blocking-absolute-wf_vblank@d-hdmi-a4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_pipe_crc_basic@read-crc@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_pipe_crc_basic@read-crc@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_pipe_crc_basic@read-crc@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_120767v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8414]) +9 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1099]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#280])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          NOTRUN -> [ABORT][11] ([i915#7975] / [i915#8213])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_eio@hibernate.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-mtlp:         [PASS][12] -> [ABORT][13] ([i915#8503])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-3/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][14] ([i915#8898])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#4812])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3539] / [i915#4852])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#7697])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@secure-non-root:
    - shard-rkl:          NOTRUN -> [SKIP][22] ([fdo#112283])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#3281])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#3281])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#3281]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-mtlp:         [PASS][26] -> [ABORT][27] ([i915#8131])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-5/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-4/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_mmap@bad-object:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4083])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@gem_mmap@bad-object.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#4077])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4083]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4270]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#4270])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_tiled_fence_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4077]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#3297] / [i915#4880])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-rkl:          NOTRUN -> [SKIP][35] ([fdo#109289])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#2856])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#2527])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-mtlp:         [PASS][38] -> [FAIL][39] ([i915#8691])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#5978])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#658])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#6590])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-tglu:         [PASS][43] -> [FAIL][44] ([i915#7940]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-tglu-3/igt@i915_pm_rpm@basic-rte.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-tglu-5/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [PASS][45] -> [SKIP][46] ([i915#1397])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-11/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#1397])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#7984])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@i915_power@sanity.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][49] -> [DMESG-FAIL][50] ([i915#5334])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - shard-mtlp:         [PASS][51] -> [DMESG-FAIL][52] ([i915#7059])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-2/igt@i915_selftest@live@gt_mocs.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@requests:
    - shard-mtlp:         [PASS][53] -> [DMESG-FAIL][54] ([i915#8497])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-2/igt@i915_selftest@live@requests.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@i915_selftest@live@requests.html

  * igt@kms_async_flips@crc@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][55] ([i915#8247]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb2/igt@kms_async_flips@crc@pipe-b-vga-1.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#6229])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_async_flips@test-cursor.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#5286])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         [PASS][58] -> [FAIL][59] ([i915#3743]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#5190])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4538] / [i915#5190])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#3689] / [i915#5354]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#5354] / [i915#6095])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#6095])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#3734] / [i915#5354] / [i915#6095]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3689] / [i915#3886] / [i915#5354])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#5354]) +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs:
    - shard-snb:          NOTRUN -> [SKIP][68] ([fdo#109271]) +230 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#5354]) +11 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4087]) +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#7828]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#7828]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#7118])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#7118])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-7/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#6944])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([fdo#109279] / [i915#3359])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#8814])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3359])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#3546])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([fdo#109274] / [i915#5354])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-snb:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111767]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#2346]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#8827])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-5/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3555]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-7/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3555] / [i915#3840])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([fdo#109274]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([fdo#111825]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#2672])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-dg2:          [PASS][90] -> [FAIL][91] ([i915#6880])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([fdo#111825] / [i915#1825]) +3 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-dg2:          [PASS][93] -> [FAIL][94] ([fdo#103375])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#8708])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#1825]) +4 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#8708]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3458]) +5 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-slowdraw:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#3023]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3555] / [i915#8228])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#3555] / [i915#8228])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([fdo#109289]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-2:
    - shard-dg2:          NOTRUN -> [FAIL][103] ([i915#8292])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-2.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#5176]) +7 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-dp-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#5176]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#5235]) +15 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#5235]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([fdo#111068] / [i915#658])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#658])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_suspend:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#1072])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_psr@psr2_suspend.html

  * igt@kms_psr@suspend:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#1072])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_psr@suspend.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#5289])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#8623])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#4070] / [i915#6768])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-glk:          [PASS][115] -> [TIMEOUT][116] ([i915#8170])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@perf@enable-disable@0-rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@perf@enable-disable@0-rcs0.html
    - shard-dg2:          [PASS][117] -> [FAIL][118] ([i915#8724])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-12/igt@perf@enable-disable@0-rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html

  * igt@perf_pmu@rc6-suspend:
    - shard-snb:          NOTRUN -> [DMESG-WARN][119] ([i915#8841]) +7 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb4/igt@perf_pmu@rc6-suspend.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#3708] / [i915#4077])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@prime_vgem@basic-gtt.html

  * igt@sysfs_heartbeat_interval@nopreempt@vcs0:
    - shard-mtlp:         [PASS][121] -> [FAIL][122] ([i915#6015]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-8/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-2/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html

  * igt@v3d/v3d_mmap@mmap-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#2575]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@v3d/v3d_mmap@mmap-bad-handle.html

  * igt@v3d/v3d_submit_csd@bad-multisync-extension:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([fdo#109315]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@v3d/v3d_submit_csd@bad-multisync-extension.html

  * igt@v3d/v3d_submit_csd@bad-pad:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#2575]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@v3d/v3d_submit_csd@bad-pad.html

  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#7711])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#7711]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][128] ([i915#7742]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [FAIL][130] ([i915#6268]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_capture@pi@ccs0:
    - shard-mtlp:         [FAIL][132] ([i915#7765]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-7/igt@gem_exec_capture@pi@ccs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-7/igt@gem_exec_capture@pi@ccs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][134] ([i915#2846]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk4/igt@gem_exec_fair@basic-deadline.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][136] ([i915#2842]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][138] ([i915#5493]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-rkl:          [SKIP][140] ([i915#1937]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][142] ([i915#1397]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress@smem0:
    - shard-tglu:         [FAIL][144] ([i915#7940]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-tglu-9/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-tglu-6/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-dg1}:        [SKIP][146] ([i915#1397]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][148] ([i915#7790]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-snb1/igt@i915_pm_rps@reset.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][150] ([fdo#103375]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][152] ([i915#5138]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         [FAIL][154] ([i915#3743]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-mtlp:         [FAIL][156] ([i915#8248]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          [FAIL][158] ([i915#6880]) -> [PASS][159] +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@perf_pmu@rc6-suspend:
    - shard-dg2:          [FAIL][160] ([fdo#103375]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-5/igt@perf_pmu@rc6-suspend.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-2/igt@perf_pmu@rc6-suspend.html

  * igt@syncobj_timeline@reset-during-wait-for-submit:
    - {shard-dg1}:        [DMESG-WARN][162] ([i915#1982]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg1-16/igt@syncobj_timeline@reset-during-wait-for-submit.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg1-13/igt@syncobj_timeline@reset-during-wait-for-submit.html

  * igt@sysfs_heartbeat_interval@nopreempt@vecs0:
    - shard-mtlp:         [FAIL][164] ([i915#6015]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-8/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-2/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html

  
#### Warnings ####

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][166] ([i915#7118] / [i915#7162]) -> [SKIP][167] ([i915#7118]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-11/igt@kms_content_protection@type1.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_content_protection@type1.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][168] ([fdo#110189] / [i915#3955]) -> [SKIP][169] ([i915#3955]) +1 similar issue
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
  [i915#6015]: https://gitlab.freedesktop.org/drm/intel/issues/6015
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6229]: https://gitlab.freedesktop.org/drm/intel/issues/6229
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7765]: https://gitlab.freedesktop.org/drm/intel/issues/7765
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8131]: https://gitlab.freedesktop.org/drm/intel/issues/8131
  [i915#8170]: https://gitlab.freedesktop.org/drm/intel/issues/8170
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8503]: https://gitlab.freedesktop.org/drm/intel/issues/8503
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8827]: https://gitlab.freedesktop.org/drm/intel/issues/8827
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8898]: https://gitlab.freedesktop.org/drm/intel/issues/8898


Build changes
-------------

  * Linux: CI_DRM_13395 -> Patchwork_120767v3

  CI-20190529: 20190529
  CI_DRM_13395: bbc705aa183558a9765154ea8836b6105c9ab24c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7394: 3b0c82d7e9f1b8708d351243de7f227153793ede @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_120767v3: bbc705aa183558a9765154ea8836b6105c9ab24c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/index.html

--===============0304584459622485574==
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
<tr><td><b>Series:</b></td><td>drm/i915: Start using plane scale factor for relative data rate (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/120767/">https://patchwork.freedesktop.org/series/120767/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13395_full -&gt; Patchwork_120767v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_120767v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_120767v3_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_120767v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-snb2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-idle-hang:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@kms_vblank@pipe-c-wait-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@kms_vblank@pipe-c-wait-idle-hang.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_big_fb@y-tiled-16bpp-rotate-270:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13395_full and Patchwork_120767v3_full:</p>
<h3>New IGT tests (8)</h3>
<ul>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank@a-hdmi-a4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank@b-hdmi-a4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank@c-hdmi-a4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank@d-hdmi-a4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120767v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@drm_fdinfo@most-busy-check-all@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-3/igt@gem_eio@in-flight-contexts-immediate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8503">i915#8503</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb4/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8898">i915#8898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_exec_flush@basic-wb-ro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_exec_gttfill@multigpu-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_exec_params@secure-non-root.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@gem_exec_reloc@basic-concurrent16.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-5/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-4/igt@gem_exec_whisper@basic-contexts-forked-all.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8131">i915#8131</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-object:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@gem_mmap@bad-object.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_mmap_wc@write-gtt-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gen7_exec_parse@basic-allowed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8691">i915#8691</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@i915_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5978">i915#5978</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@i915_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6590">i915#6590</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-tglu-3/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-tglu-5/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-11/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-2/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb2/igt@kms_async_flips@crc@pipe-b-vga-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#8247</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_async_flips@test-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6229">i915#6229</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3734">i915#3734</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +230 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-7/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279">fdo#109279</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-5/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8827">i915#8827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-7/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-slowdraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_psr@suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6768">i915#6768</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk5/igt@perf@enable-disable@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk2/igt@perf@enable-disable@0-rcs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8170">i915#8170</a>)</p>
</li>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-12/igt@perf@enable-disable@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8724">i915#8724</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb4/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-8/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-2/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6015">i915#6015</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-6/igt@v3d/v3d_mmap@mmap-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-extension:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@v3d/v3d_submit_csd@bad-multisync-extension.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-pad:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@v3d/v3d_submit_csd@bad-pad.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-4/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-7/igt@gem_exec_capture@pi@ccs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7765">i915#7765</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-7/igt@gem_exec_capture@pi@ccs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-glk4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@smem0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-tglu-9/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-tglu-6/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-snb1/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8248">i915#8248</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-5/igt@perf_pmu@rc6-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-2/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-during-wait-for-submit:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg1-16/igt@syncobj_timeline@reset-during-wait-for-submit.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg1-13/igt@syncobj_timeline@reset-during-wait-for-submit.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-mtlp-8/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6015">i915#6015</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-mtlp-2/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-dg2-10/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13395/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v3/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13395 -&gt; Patchwork_120767v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13395: bbc705aa183558a9765154ea8836b6105c9ab24c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7394: 3b0c82d7e9f1b8708d351243de7f227153793ede @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_120767v3: bbc705aa183558a9765154ea8836b6105c9ab24c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0304584459622485574==--
