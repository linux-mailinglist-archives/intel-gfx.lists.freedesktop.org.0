Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2425873A77F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 19:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B430410E597;
	Thu, 22 Jun 2023 17:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6073B10E596;
 Thu, 22 Jun 2023 17:42:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57AFFAADD5;
 Thu, 22 Jun 2023 17:42:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8620316622114249675=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Date: Thu, 22 Jun 2023 17:42:16 -0000
Message-ID: <168745573632.4871.11728842290583223418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230622083254.2057102-1-suraj.kandpal@intel.com>
In-Reply-To: <20230622083254.2057102-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Assign_correct_hdcp_content_type?=
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

--===============8620316622114249675==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Assign correct hdcp content type
URL   : https://patchwork.freedesktop.org/series/119727/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13303_full -> Patchwork_119727v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119727v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119727v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119727v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-dp-1:
    - shard-apl:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-dp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-dp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-dp-1:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-dp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-dp-1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13303_full and Patchwork_119727v1_full:

### New IGT tests (4) ###

  * igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-none@pipe-d-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_119727v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-tglu:         [PASS][5] -> [ABORT][6] ([i915#8211] / [i915#8234])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-tglu-6/igt@gem_barrier_race@remote-request@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-tglu-3/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglu:         [PASS][7] -> [TIMEOUT][8] ([i915#3063] / [i915#7941])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-tglu-7/igt@gem_eio@in-flight-contexts-10ms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-tglu-10/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][11] -> [FAIL][12] ([i915#3989] / [i915#454])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-tglu-4/igt@i915_pm_dc@dc6-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-rkl:          [PASS][13] -> [SKIP][14] ([i915#1937] / [i915#4579])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [PASS][15] -> [SKIP][16] ([i915#1397])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-glk:          NOTRUN -> [SKIP][17] ([fdo#109271]) +9 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk2/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-snb:          NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111767])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2122])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_hdr@invalid-hdr:
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4579]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk2/igt@kms_hdr@invalid-hdr.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#4579] / [i915#5176]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][23] ([fdo#109271]) +9 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb5/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#5176]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#4579] / [i915#5235]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#4579]) +5 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#5235]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_vblank@pipe-b-query-idle-hang:
    - shard-snb:          [PASS][28] -> [SKIP][29] ([fdo#109271])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-snb1/igt@kms_vblank@pipe-b-query-idle-hang.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb5/igt@kms_vblank@pipe-b-query-idle-hang.html

  * igt@perf_pmu@busy-start@vecs0:
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#118])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-glk1/igt@perf_pmu@busy-start@vecs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk4/igt@perf_pmu@busy-start@vecs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][32] ([i915#6268]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@full-pulse:
    - {shard-dg2}:        [FAIL][34] ([i915#6032]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-7/igt@gem_exec_balancer@full-pulse.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-1/igt@gem_exec_balancer@full-pulse.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][36] ([i915#2842]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][38] ([i915#2842]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [FAIL][40] ([i915#2842]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][42] ([i915#5566]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - {shard-dg2}:        [DMESG-WARN][44] ([i915#7061]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][46] ([i915#1397]) -> [PASS][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-dg2}:        [SKIP][48] ([i915#1397]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-dg1}:        [SKIP][50] ([i915#1397]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][52] ([i915#5334]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][54] ([fdo#103375]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - {shard-dg1}:        [FAIL][56] ([i915#3743] / [i915#7959]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg1-19/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg1-13/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][58] ([i915#2346]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [FAIL][60] ([i915#2346]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@forked-move@pipe-b:
    - {shard-dg1}:        [INCOMPLETE][62] ([i915#8011] / [i915#8347]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg1-19/igt@kms_cursor_legacy@forked-move@pipe-b.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg1-13/igt@kms_cursor_legacy@forked-move@pipe-b.html

  * igt@kms_cursor_legacy@single-bo@pipe-b:
    - shard-rkl:          [INCOMPLETE][64] ([i915#8011]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-7/igt@kms_cursor_legacy@single-bo@pipe-b.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-4/igt@kms_cursor_legacy@single-bo@pipe-b.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - {shard-dg2}:        [FAIL][66] ([fdo#103375]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@non-zero-reason@0-rcs0:
    - {shard-dg2}:        [FAIL][68] ([i915#7484]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html

  
#### Warnings ####

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-snb:          [SKIP][70] ([fdo#109271] / [i915#4579]) -> [SKIP][71] ([fdo#109271]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-snb1/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb5/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][72] ([fdo#110189] / [i915#3955]) -> [SKIP][73] ([i915#3955])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][74] ([fdo#109285]) -> [SKIP][75] ([fdo#109285] / [i915#4098])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-4/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5892]: https://gitlab.freedesktop.org/drm/intel/issues/5892
  [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7679]: https://gitlab.freedesktop.org/drm/intel/issues/7679
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7886]: https://gitlab.freedesktop.org/drm/intel/issues/7886
  [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
  [i915#7959]: https://gitlab.freedesktop.org/drm/intel/issues/7959
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8230]: https://gitlab.freedesktop.org/drm/intel/issues/8230
  [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708


Build changes
-------------

  * Linux: CI_DRM_13303 -> Patchwork_119727v1

  CI-20190529: 20190529
  CI_DRM_13303: 42fbaec1e14a49f75ae207f0c656c5a272f2077f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7345: bedba6f82d70f8eb49c53cb2c45ee60a1eec04d1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119727v1: 42fbaec1e14a49f75ae207f0c656c5a272f2077f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/index.html

--===============8620316622114249675==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Assign correct hdcp content type</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119727/">https://patchwork.freedesktop.org/series/119727/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13303_full -&gt; Patchwork_119727v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119727v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119727v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119727v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-dp-1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-dp-1.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13303_full and Patchwork_119727v1_full:</p>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119727v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-tglu-6/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-tglu-3/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8234">i915#8234</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-tglu-7/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-tglu-10/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7941">i915#7941</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-tglu-4/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk2/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb5/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle-hang:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-snb1/igt@kms_vblank@pipe-b-query-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb5/igt@kms_vblank@pipe-b-query-idle-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-start@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-glk1/igt@perf_pmu@busy-start@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk4/igt@perf_pmu@busy-start@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-pulse:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-7/igt@gem_exec_balancer@full-pulse.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6032">i915#6032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-1/igt@gem_exec_balancer@full-pulse.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-glk4/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7061">i915#7061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg1-19/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7959">i915#7959</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg1-13/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-move@pipe-b:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg1-19/igt@kms_cursor_legacy@forked-move@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg1-13/igt@kms_cursor_legacy@forked-move@pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-bo@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-7/igt@kms_cursor_legacy@single-bo@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-4/igt@kms_cursor_legacy@single-bo@pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-snb1/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-snb5/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13303/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119727v1/shard-rkl-4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13303 -&gt; Patchwork_119727v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13303: 42fbaec1e14a49f75ae207f0c656c5a272f2077f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7345: bedba6f82d70f8eb49c53cb2c45ee60a1eec04d1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119727v1: 42fbaec1e14a49f75ae207f0c656c5a272f2077f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8620316622114249675==--
