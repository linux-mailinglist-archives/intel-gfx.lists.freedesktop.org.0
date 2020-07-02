Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF94212F3D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 00:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 324236E3A2;
	Thu,  2 Jul 2020 22:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFFE56E277;
 Thu,  2 Jul 2020 22:02:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8CA7A0BC6;
 Thu,  2 Jul 2020 22:02:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 02 Jul 2020 22:02:34 -0000
Message-ID: <159372735466.5657.6147858092777946990@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_FBC_fixes_=28rev3=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: FBC fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/76714/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8697_full -> Patchwork_18070_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18070_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-kbl6/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-kbl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1930])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-snb5/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-snb2/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-glk1/igt@gem_exec_whisper@basic-forked-all.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][9] -> [WARN][10] ([i915#1519])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#1515])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@mock@requests:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#2110])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-tglb6/igt@i915_selftest@mock@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-tglb3/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_legacy@pipe-a-forked-move:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#95]) +14 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-apl2/igt@kms_cursor_legacy@pipe-a-forked-move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-apl1/igt@kms_cursor_legacy@pipe-a-forked-move.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-kbl6/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-kbl6/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-tglb8/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-tglb7/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +9 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-skl9/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-skl3/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#1559])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-glk7/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-glk4/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_pwrite_crc:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#93] / [i915#95]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-kbl6/igt@kms_pwrite_crc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-kbl6/igt@kms_pwrite_crc.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32] ([i915#155] / [i915#794])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@sw_sync@timeline_closed_signaled:
    - shard-tglb:         [PASS][33] -> [DMESG-WARN][34] ([i915#402])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-tglb8/igt@sw_sync@timeline_closed_signaled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-tglb7/igt@sw_sync@timeline_closed_signaled.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-tglb:         [FAIL][35] ([i915#1528]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-tglb7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-tglb5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_shared@q-independent@vecs0:
    - shard-iclb:         [DMESG-WARN][37] ([i915#1226]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-iclb2/igt@gem_ctx_shared@q-independent@vecs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-iclb6/igt@gem_ctx_shared@q-independent@vecs0.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][39] ([i915#402]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-tglb8/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-tglb7/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-iclb:         [INCOMPLETE][41] ([i915#926]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-iclb2/igt@i915_module_load@reload-with-fault-injection.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-iclb6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][43] ([i915#151] / [i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-skl5/igt@i915_pm_rpm@system-suspend-modeset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][45] ([i915#198] / [i915#2110]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-skl6/igt@i915_selftest@mock@requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-skl4/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][47] ([i915#118] / [i915#95]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-glk3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-apl6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-apl1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-pixel-format:
    - shard-apl:          [DMESG-WARN][51] ([i915#1635] / [i915#95]) -> [PASS][52] +17 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-apl6/igt@kms_ccs@pipe-a-bad-pixel-format.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-apl1/igt@kms_ccs@pipe-a-bad-pixel-format.html

  * igt@kms_color@pipe-c-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-skl7/igt@kms_color@pipe-c-ctm-green-to-red.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-skl10/igt@kms_color@pipe-c-ctm-green-to-red.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][55] ([IGT#5]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-snb:          [TIMEOUT][59] ([i915#1958] / [i915#2119]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][67] ([i915#69]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][69] ([i915#1958] / [i915#2119]) -> [FAIL][70] ([i915#1930])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][71] ([i915#2036]) -> [WARN][72] ([i915#2021])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-tglb:         [FAIL][73] ([i915#1149] / [i915#315]) -> [DMESG-FAIL][74] ([i915#1149] / [i915#402])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-tglb7/igt@kms_color@pipe-a-ctm-0-75.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-tglb5/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][75] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][76] ([i915#1319] / [i915#2119])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-kbl6/igt@kms_content_protection@atomic-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-kbl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          [SKIP][77] ([fdo#109271]) -> [SKIP][78] ([fdo#109271] / [i915#1635]) +9 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-apl:          [SKIP][79] ([fdo#109271] / [i915#1635]) -> [SKIP][80] ([fdo#109271]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-apl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-apl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-snb:          [TIMEOUT][81] ([i915#1958] / [i915#2119]) -> [SKIP][82] ([fdo#109271]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-snb4/igt@kms_plane_lowres@pipe-b-tiling-y.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-snb4/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][83], [FAIL][84], [FAIL][85]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][86] ([i915#1635] / [i915#2110])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-apl4/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-apl1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-apl4/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-apl1/igt@runner@aborted.html
    - shard-tglb:         [FAIL][87] ([i915#2110]) -> [FAIL][88] ([i915#1764] / [i915#2110])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8697/shard-tglb6/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/shard-tglb3/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8697 -> Patchwork_18070

  CI-20190529: 20190529
  CI_DRM_8697: a9230e22c3c6a16047315beb00f49eef2e74ea0a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18070: 67bae0ce0e61122de7a83926ba23904dcb83c299 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18070/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
