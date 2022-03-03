Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CFE4CBC09
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 12:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D3410E46D;
	Thu,  3 Mar 2022 11:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFE3710E46D;
 Thu,  3 Mar 2022 11:01:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC6F3A47DF;
 Thu,  3 Mar 2022 11:01:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6127506227177984244=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Thu, 03 Mar 2022 11:01:32 -0000
Message-ID: <164630529292.19854.10802653623625495453@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220302231119.16876-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20220302231119.16876-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/adlp=3A_Remove_code_related_to_underrun_recovery?=
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

--===============6127506227177984244==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/adlp: Remove code related to underrun recovery
URL   : https://patchwork.freedesktop.org/series/100965/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11316_full -> Patchwork_22466_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22466_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
    - shard-iclb:         [PASS][1] -> [SKIP][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11316_full and Patchwork_22466_full:

### New IGT tests (1) ###

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:
    - Statuses : 1 pass(s)
    - Exec time: [1.28] s

  

Known issues
------------

  Here are the changes found in Patchwork_22466_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - {shard-rkl}:        ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [FAIL][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) ([i915#5131]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][45] ([i915#4991])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-apl6/igt@gem_create@create-massive.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [PASS][46] -> [TIMEOUT][47] ([i915#3063])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][48] -> [FAIL][49] ([i915#2842])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][50] -> [FAIL][51] ([i915#2842])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-glk:          [PASS][52] -> [FAIL][53] ([i915#2842])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [PASS][54] -> [DMESG-WARN][55] ([i915#118]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-glk1/igt@gem_exec_gttfill@all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-glk1/igt@gem_exec_gttfill@all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][56] -> [SKIP][57] ([i915#2190])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][60] -> [DMESG-WARN][61] ([i915#1436] / [i915#716])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#2527] / [i915#2856])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-tglb3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][63] -> [FAIL][64] ([i915#454]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-skl:          [PASS][65] -> [DMESG-WARN][66] ([i915#1982])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl7/igt@i915_pm_rps@min-max-config-loaded.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl1/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#2521])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271]) +17 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][71] ([i915#2346])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([i915#79])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#2122])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][76] -> [SKIP][77] ([i915#3701])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][78] -> [INCOMPLETE][79] ([i915#2828] / [i915#3614])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-apl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][81] ([fdo#108145] / [i915#265])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][82] -> [SKIP][83] ([fdo#109642] / [fdo#111068] / [i915#658])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][84] -> [SKIP][85] ([fdo#109441])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:
    - shard-snb:          NOTRUN -> [SKIP][86] ([fdo#109271]) +8 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-snb4/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#1722])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl1/igt@perf@polling-small-buf.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl9/igt@perf@polling-small-buf.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][89] ([i915#5098])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl4/igt@syncobj_timeline@transfer-timeline-point.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][90] ([i915#2410]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][92] ([i915#4525]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [INCOMPLETE][94] ([i915#4547]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl4/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][96] ([i915#2846]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][98] ([i915#2842]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-glk:          [FAIL][100] ([i915#2842]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][104] ([i915#2842]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-scanout@vecs0:
    - {shard-rkl}:        [SKIP][106] ([i915#3639]) -> [PASS][107] +3 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@gem_exec_reloc@basic-scanout@vecs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html

  * igt@gem_linear_blits@normal:
    - shard-glk:          [DMESG-WARN][108] ([i915#118]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-glk1/igt@gem_linear_blits@normal.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-glk1/igt@gem_linear_blits@normal.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][110] ([i915#4171]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-glk8/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_userptr_blits@create-destroy-sync:
    - {shard-rkl}:        [INCOMPLETE][112] ([i915#3297]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/igt@gem_userptr_blits@create-destroy-sync.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/igt@gem_userptr_blits@create-destroy-sync.html

  * igt@i915_pm_backlight@fade_with_dpms:
    - {shard-rkl}:        [SKIP][114] ([i915#3012]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@i915_pm_backlight@fade_with_dpms.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-rkl}:        [SKIP][116] ([i915#658]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@i915_pm_dc@dc6-psr.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][118] ([i915#4281]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-rkl}:        [SKIP][120] ([i915#1397]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@reset:
    - {shard-dg1}:        [FAIL][122] ([i915#3719]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-dg1-12/igt@i915_pm_rps@reset.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-dg1-13/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][124] ([i915#3921]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-snb4/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
    - {shard-rkl}:        [SKIP][126] ([i915#1845]) -> [PASS][127] +5 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - {shard-tglu}:       [DMESG-WARN][128] ([i915#402]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-tglu-6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-tglu-5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - {shard-rkl}:        [SKIP][130] ([fdo#112022] / [i915#4070]) -> [PASS][131] +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:
    - {shard-rkl}:        [SKIP][132] ([i915#1849] / [i915#4070]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][134] ([i915#72]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-c-forked-move:
    - {shard-rkl}:        ([PASS][136], [SKIP][137]) ([i915#4070]) -> ([PASS][138], [PASS][139])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-move.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
    - {shard-rkl}:        [SKIP][140] ([fdo#111825] / [i915#4070]) -> [PASS][141] +2 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - {shard-rkl}:        [SKIP][142] ([fdo#111314]) -> [PASS][143] +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][144] ([i915#79]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][146] ([i915#180]) -> [PASS][147] +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:
    - shard-kbl:          [FAIL][148] ([i915#2122]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][150] ([i915#2122]) -> [PASS][151] +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - {shard-rkl}:        [SKIP][152] ([i915#1849]) -> [PASS][153] +6 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@kms_frontbuffer_tracking@basic.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][154] ([fdo#108145] / [i915#265]) -> [PASS][155] +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
    - shard-iclb:         [INCOMPLETE][156] -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][158] ([fdo#109441]) -> [PASS][159] +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - {shard-rkl}:        [SKIP][160] ([i915#1845] / [i915#4070]) -> [PASS][161] +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][162] ([i915#1542]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl1/igt@perf@polling.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl8/igt@perf@polling.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-skl:          [FAIL][164] ([i915#1731]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl1/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl9/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [WARN][166] ([i915#4055]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-skl1/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-snb:          [INCOMPLETE][168] -> [SKIP][169] ([fdo#109271])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-snb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-snb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][170] ([i915#1804] / [i915#2684]) -> [WARN][171] ([i915#2684])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/index.html

--===============6127506227177984244==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/adlp: Remove code related t=
o underrun recovery</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100965/">https://patchwork.freedesktop.org/series/100965/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22466/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22466/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11316_full -&gt; Patchwork_22466_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22466_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a=
-edp-1-planes-upscale-downscale}:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-ic=
lb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-=
edp-1-planes-upscale-downscale.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11316_full and Patchwork_2=
2466_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d=
-edp-1-planes-upscale-downscale:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.28] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22466_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11316/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11316/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_113=
16/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/sha=
rd-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11316/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl=
-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11316/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11316/shard-rkl-4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1131=
6/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/shard-rkl-2/boot.html">PASS=
</a>) ([i915#5131]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22466/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-5/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22466/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/=
shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22466/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
66/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22466/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22466/shard-rkl-2/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22466/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22466/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-1=
/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22466/shard-apl6/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/=
shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> ([i915#306=
3])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2466/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11316/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
66/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915=
#2842])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11316/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2246=
6/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2=
842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-glk1/igt@gem_exec_gttfill@all.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-glk1/=
igt@gem_exec_gttfill@all.html">DMESG-WARN</a> ([i915#118]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-apl8/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22466/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">DMESG-WA=
RN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/s=
hard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22466/shard-tglb3/igt@gen9_exec_parse@shadow-peek.h=
tml">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-iclb3=
/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl7/igt@i915_pm_rps@min-max-config-loaded.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2246=
6/shard-skl1/igt@i915_pm_rps@min-max-config-loaded.html">DMESG-WARN</a> ([i=
915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22466/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html">FA=
IL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22466/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22466/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-5=
12x170-rapid-movement.html">SKIP</a> ([fdo#109271]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22466/shard-skl4/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22466/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22466/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22466/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2466/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</=
a> ([i915#2828] / [i915#3614])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22466/shard-apl6/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22466/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2246=
6/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109=
642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466=
/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#10944=
1])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22466/shard-snb4/igt@kms_vblank@pipe-a-ts-continuat=
ion-modeset-rpm.html">SKIP</a> ([fdo#109271]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl1/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl=
9/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22466/shard-skl4/igt@syncobj_timeline@transfer-time=
line-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> ([i915#2410]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22466/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22466/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> =
([i915#4547]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22466/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22466/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11316/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22466/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11316/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22466/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22466/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22466/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@gem_exec_reloc@basic-scanout@vecs0.html">SKIP=
</a> ([i915#3639]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22466/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html">=
PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@normal:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-glk1/igt@gem_linear_blits@normal.html">DMESG-WARN</a> (=
[i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22466/shard-glk1/igt@gem_linear_blits@normal.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html">=
FAIL</a> ([i915#4171]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22466/shard-glk8/igt@gem_softpin@allocator-evict-all-engine=
s.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-sync:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-5/igt@gem_userptr_blits@create-destroy-sync.html">I=
NCOMPLETE</a> ([i915#3297]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22466/shard-rkl-2/igt@gem_userptr_blits@create-destroy=
-sync.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@i915_pm_backlight@fade_with_dpms.html">SKIP</=
a> ([i915#3012]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22466/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@i915_pm_dc@dc6-psr.html">SKIP</a> ([i915#658]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466=
/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#428=
1]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
66/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>SKIP</a> ([i915#1397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22466/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-w=
ait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-dg1-12/igt@i915_pm_rps@reset.html">FAIL</a> ([i915#3719=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2246=
6/shard-dg1-13/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-snb4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> ([i915#3921]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22466/shard-snb4/igt@i915_selftest@live@hangcheck.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-=
180.html">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_big_fb@linear-max-hw-st=
ride-64bpp-rotate-180.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-tglu-6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMES=
G-WARN</a> ([i915#402]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22466/shard-tglu-5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen=
.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_cursor_crc@=
pipe-a-cursor-128x42-offscreen.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge=
.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_cursor_edge_=
walk@pipe-a-128x128-left-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomi=
c.html">FAIL</a> ([i915#72]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22466/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-v=
s-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-forked-move:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11316/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-move.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/s=
hard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html">SKIP</a>) ([i915#=
4070]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22466/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-move.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-=
rkl-4/igt@kms_cursor_legacy@pipe-c-forked-move.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varyin=
g-size:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@kms_cursor_legacy@short-flip-before-cursor-at=
omic-transitions-varying-size.html">SKIP</a> ([fdo#111825] / [i915#4070]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/sh=
ard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions=
-varying-size.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.=
html">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8=
888-blt-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22466/shard-glk8/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22466/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS<=
/a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-dp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22466/shard-kbl6/igt@kms_flip@plain-flip-fb-rec=
reate-interruptible@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22466/shard-skl8/igt@kms_flip@plain-flip-fb-re=
create-interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a>=
 ([i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22466/shard-rkl-6/igt@kms_frontbuffer_tracking@basic.html">PASS</a>=
 +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22466/shard-skl8/igt@kms_plane_alpha_blend=
@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-=
with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clampi=
ng@pipe-b-edp-1-scaler-with-clipping-clamping.html">INCOMPLETE</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-icl=
b6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-=
with-clipping-clamping.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22466/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-rkl-1/igt@kms_universal_plane@universal-plane-gen9-feat=
ures-pipe-a.html">SKIP</a> ([i915#1845] / [i915#4070]) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard-rkl-6/igt@kms_u=
niversal_plane@universal-plane-gen9-features-pipe-a.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl1/igt@perf@polling.html">FAIL</a> ([i915#1542]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22466/shard=
-skl8/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl1/igt@sysfs_heartbeat_interval@mixed@bcs0.html">FAIL=
</a> ([i915#1731]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22466/shard-skl9/igt@sysfs_heartbeat_interval@mixed@bcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-skl1/igt@sysfs_heartbeat_interval@mixed@rcs0.html">WARN=
</a> ([i915#4055]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22466/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html">=
PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-snb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22466/shard-snb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([fdo#1=
09271])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22466/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          ([FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175]=
, [FAIL][176], [FAIL][177]) ([fdo#109271] / [i915#180] / [i915#1814] / [i91=
5#3002] / [i915#4312]) -&gt; ([FAIL][178], [FAIL][179], [FAIL][180], [FAIL]=
[181], [FAIL][182], [FAIL</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6127506227177984244==--
