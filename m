Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D04E5650614
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 02:26:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F092C10E096;
	Mon, 19 Dec 2022 01:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9CB3D10E096;
 Mon, 19 Dec 2022 01:25:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97152AADD6;
 Mon, 19 Dec 2022 01:25:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6325707003349485679=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Mon, 19 Dec 2022 01:25:17 -0000
Message-ID: <167141311758.5873.17252905739357880835@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221216152744.18658-1-nirmoy.das@intel.com>
In-Reply-To: <20221216152744.18658-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_helper_func_to_find_out_map_type?=
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

--===============6325707003349485679==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use helper func to find out map type
URL   : https://patchwork.freedesktop.org/series/112013/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12512_full -> Patchwork_112013v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/index.html

Participating hosts (13 -> 11)
------------------------------

  Additional (1): shard-rkl0 
  Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112013v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_hwmon@hwmon-write}:
    - {shard-tglu}:       NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-3/igt@i915_hwmon@hwmon-write.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - {shard-dg1}:        [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-dg1-15/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-dg1-17/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_vblank@pipe-a-query-forked-busy-hang:
    - {shard-dg1}:        NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-dg1-16/igt@kms_vblank@pipe-a-query-forked-busy-hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_112013v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-glk:          NOTRUN -> [SKIP][5] ([fdo#109271]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk6/igt@feature_discovery@display-4x.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2846])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#5566] / [i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#3886])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#79])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2122])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@perf@stress-open-close:
    - shard-glk:          [PASS][16] -> [INCOMPLETE][17] ([i915#5213])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk1/igt@perf@stress-open-close.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk1/igt@perf@stress-open-close.html

  
#### Possible fixes ####

  * igt@drm_read@fault-buffer:
    - {shard-rkl}:        [SKIP][18] ([i915#4098]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@drm_read@fault-buffer.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@drm_read@fault-buffer.html

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][20] ([i915#2582]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-1/igt@fbdev@write.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-4/igt@fbdev@write.html

  * igt@gem_blits@basic:
    - {shard-rkl}:        [FAIL][22] ([i915#7673]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@gem_blits@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-5/igt@gem_blits@basic.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-glk:          [FAIL][24] ([i915#2842]) -> [PASS][25] +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk6/igt@gem_exec_fair@basic-pace@vcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk9/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - {shard-rkl}:        [SKIP][26] ([i915#3281]) -> [PASS][27] +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-noreloc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - {shard-rkl}:        [SKIP][28] ([i915#2527]) -> [PASS][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@gen9_exec_parse@cmd-crossing-page.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-dg1}:        [FAIL][30] ([i915#3591]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-rkl}:        [SKIP][32] ([i915#1397]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-tglu}:       [SKIP][34] ([i915#1397]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@i915_pm_rpm@modeset-lpsp.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-dg1}:        [SKIP][36] ([i915#1397]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [FAIL][38] ([i915#5138]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - {shard-tglu}:       [SKIP][40] -> [PASS][41] +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_flip@modeset-vs-vblank-race@c-hdmi-a2:
    - shard-glk:          [FAIL][42] ([i915#407]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@c-hdmi-a2.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@c-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - {shard-tglu}:       [SKIP][44] ([i915#1849]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - {shard-tglu}:       ([PASS][46], [SKIP][47]) ([i915#1849]) -> [PASS][48] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][49] ([i915#1849] / [i915#4098]) -> [PASS][50] +11 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_psr@sprite_plane_onoff:
    - {shard-rkl}:        [SKIP][51] ([i915#1072]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-2/igt@kms_psr@sprite_plane_onoff.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_universal_plane@universal-plane-pipe-c-functional:
    - {shard-tglu}:       [SKIP][53] ([fdo#109274]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_universal_plane@universal-plane-pipe-c-functional.html

  * igt@kms_vblank@pipe-b-query-forked:
    - {shard-rkl}:        [SKIP][55] ([i915#1845] / [i915#4098]) -> [PASS][56] +18 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-2/igt@kms_vblank@pipe-b-query-forked.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-forked.html

  * igt@kms_vblank@pipe-b-ts-continuation-idle-hang:
    - {shard-tglu}:       [SKIP][57] ([i915#1845]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-idle-hang.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_vblank@pipe-b-ts-continuation-idle-hang.html

  * igt@kms_vblank@pipe-c-wait-forked:
    - {shard-tglu}:       ([PASS][59], [SKIP][60]) -> [PASS][61]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-4/igt@kms_vblank@pipe-c-wait-forked.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_vblank@pipe-c-wait-forked.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_vblank@pipe-c-wait-forked.html

  * igt@perf@gen12-mi-rpc:
    - {shard-rkl}:        [SKIP][62] ([fdo#109289]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-5/igt@perf@gen12-mi-rpc.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-4/igt@perf@gen12-mi-rpc.html

  * igt@prime_vgem@basic-write:
    - {shard-rkl}:        [SKIP][64] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-4/igt@prime_vgem@basic-write.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-5/igt@prime_vgem@basic-write.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7673]: https://gitlab.freedesktop.org/drm/intel/issues/7673
  [i915#7678]: https://gitlab.freedesktop.org/drm/intel/issues/7678
  [i915#7679]: https://gitlab.freedesktop.org/drm/intel/issues/7679
  [i915#7681]: https://gitlab.freedesktop.org/drm/intel/issues/7681
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12512 -> Patchwork_112013v1
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_12512: 32c0d1e3ac9cf7e7b64a53dcafeeb7173a2f511b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7096: f2f515390fb11554d22c7b78b94e288026545326 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112013v1: 32c0d1e3ac9cf7e7b64a53dcafeeb7173a2f511b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/index.html

--===============6325707003349485679==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use helper func to find out map type</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112013/">https://patchwork.freedesktop.org/series/112013/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12512_full -&gt; Patchwork_112013v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/index.html</p>
<h2>Participating hosts (13 -&gt; 11)</h2>
<p>Additional (1): shard-rkl0 <br />
  Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112013v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@i915_hwmon@hwmon-write}:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-3/igt@i915_hwmon@hwmon-write.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-dg1-15/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-dg1-17/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-query-forked-busy-hang:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-dg1-16/igt@kms_vblank@pipe-a-query-forked-busy-hang.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112013v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk6/igt@feature_discovery@display-4x.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk3/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk1/igt@perf@stress-open-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk1/igt@perf@stress-open-close.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@fault-buffer:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@drm_read@fault-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@drm_read@fault-buffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-1/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-4/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@gem_blits@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7673">i915#7673</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-5/igt@gem_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk9/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-noreloc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/407">i915#407</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:</p>
<ul>
<li>{shard-tglu}:       (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-2/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-c-functional:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-c-functional.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_universal_plane@universal-plane-pipe-c-functional.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-forked:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-2/igt@kms_vblank@pipe-b-query-forked.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-forked.html">PASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-idle-hang:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-idle-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_vblank@pipe-b-ts-continuation-idle-hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked:</p>
<ul>
<li>{shard-tglu}:       (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-4/igt@kms_vblank@pipe-c-wait-forked.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-tglu-6/igt@kms_vblank@pipe-c-wait-forked.html">SKIP</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-tglu-1/igt@kms_vblank@pipe-c-wait-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-5/igt@perf@gen12-mi-rpc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-4/igt@perf@gen12-mi-rpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12512/shard-rkl-4/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112013v1/shard-rkl-5/igt@prime_vgem@basic-write.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12512 -&gt; Patchwork_112013v1</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12512: 32c0d1e3ac9cf7e7b64a53dcafeeb7173a2f511b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7096: f2f515390fb11554d22c7b78b94e288026545326 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112013v1: 32c0d1e3ac9cf7e7b64a53dcafeeb7173a2f511b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6325707003349485679==--
