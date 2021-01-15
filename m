Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B917E2F8677
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 21:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27961893EF;
	Fri, 15 Jan 2021 20:18:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E6F4893A4;
 Fri, 15 Jan 2021 20:18:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48024A7DFF;
 Fri, 15 Jan 2021 20:18:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 15 Jan 2021 20:18:41 -0000
Message-ID: <161074192126.28528.7502809639200987754@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210115101329.880667-1-matthew.auld@intel.com>
In-Reply-To: <20210115101329.880667-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_back_static_declaration?=
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
Content-Type: multipart/mixed; boundary="===============0928666418=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0928666418==
Content-Type: multipart/alternative;
 boundary="===============6049436051799462993=="

--===============6049436051799462993==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: add back static declaration
URL   : https://patchwork.freedesktop.org/series/85902/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9622_full -> Patchwork_19368_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19368_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19368_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19368_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb1/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-tglb8/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_cursor_legacy@all-pipes-single-bo:
    - shard-hsw:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-hsw6/igt@kms_cursor_legacy@all-pipes-single-bo.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-hsw2/igt@kms_cursor_legacy@all-pipes-single-bo.html

  
Known issues
------------

  Here are the changes found in Patchwork_19368_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@prime:
    - shard-glk:          [PASS][5] -> [INCOMPLETE][6] ([i915#2055])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk9/igt@drm_import_export@prime.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk4/igt@drm_import_export@prime.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-hsw:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-hsw2/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#118] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk5/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-glk:          NOTRUN -> [INCOMPLETE][10] ([i915#2502] / [i915#2667])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk1/igt@gem_userptr_blits@vma-merge.html
    - shard-hsw:          NOTRUN -> [FAIL][11] ([i915#2724])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-hsw4/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][12] ([i915#454])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][13] -> [DMESG-FAIL][14] ([i915#118] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-hsw:          NOTRUN -> [SKIP][15] ([fdo#109271]) +243 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-hsw4/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_ccs@pipe-c-bad-aux-stride:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111304])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_ccs@pipe-c-bad-aux-stride.html

  * igt@kms_color@pipe-b-ctm-red-to-blue:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl7/igt@kms_color@pipe-b-ctm-red-to-blue.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl8/igt@kms_color@pipe-b-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-hsw:          NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-hsw4/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-random:
    - shard-skl:          NOTRUN -> [FAIL][23] ([i915#54]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          NOTRUN -> [FAIL][24] ([i915#2346])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#2346])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#2598])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#79])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-hsw:          [PASS][31] -> [INCOMPLETE][32] ([i915#2055] / [i915#2295])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-hsw4/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-hsw6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#2122]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-glk:          NOTRUN -> [FAIL][35] ([i915#2628])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][36] ([fdo#109271]) +8 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +52 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#1188])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl3/igt@kms_hdr@bpc-switch.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][40] ([i915#265])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@api_intel_bb@render-ccs:
    - shard-apl:          [INCOMPLETE][45] ([i915#2405] / [i915#2499]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-apl3/igt@api_intel_bb@render-ccs.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-apl3/igt@api_intel_bb@render-ccs.html

  * {igt@gem_exec_fair@basic-pace-share@rcs0}:
    - shard-tglb:         [FAIL][47] ([i915#2842]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * {igt@gem_exec_fair@basic-pace-solo@rcs0}:
    - shard-iclb:         [FAIL][49] ([i915#2842]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * {igt@gem_exec_fair@basic-pace@rcs0}:
    - shard-glk:          [FAIL][51] ([i915#2842]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html

  * {igt@gem_exec_fair@basic-pace@vcs1}:
    - shard-kbl:          [SKIP][53] ([fdo#109271]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl4/igt@gem_exec_flush@basic-uc-set-default.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl10/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [INCOMPLETE][57] ([i915#146] / [i915#198] / [i915#2295]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl9/igt@gem_workarounds@suspend-resume-context.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][59] ([i915#1436] / [i915#716]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][61] ([i915#151]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][63] ([i915#54]) -> [PASS][64] +9 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [FAIL][65] ([i915#2598]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][67] ([i915#1188]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][69] ([i915#198]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180] / [i915#78]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl2/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-kbl3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][75] ([i915#1804] / [i915#2684]) -> [WARN][76] ([i915#2684])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][77], [FAIL][78]) ([i915#1814] / [i915#2295]) -> ([FAIL][79], [FAIL][80]) ([i915#1814] / [i915#2295] / [i915#2505])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl7/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl1/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-kbl6/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-kbl7/igt@runner@aborted.html
    - shard-glk:          ([FAIL][81], [FAIL][82], [FAIL][83]) ([i915#1814] / [i915#2295] / [k.org#202321]) -> ([FAIL][84], [FAIL][85], [FAIL][86]) ([i915#1814] / [i915#2295] / [i915#2722] / [k.org#202321])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk3/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk9/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk5/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk4/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2499]: https://gitlab.freedesktop.org/drm/intel/issues/2499
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2628]: https://gitlab.freedesktop.org/drm/intel/issues/2628
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9622 -> Patchwork_19368

  CI-20190529: 20190529
  CI_DRM_9622: 1612b668c881dacf505c6f56c7b2a39d9e0d903a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19368: fb6fb58c719864a6f245e1681a4fb4665985e2a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/index.html

--===============6049436051799462993==
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
<tr><td><b>Series:</b></td><td>drm/i915: add back static declaration</td></=
tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85902/">https://patchwork.freedesktop.org/series/85902/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19368/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19368/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9622_full -&gt; Patchwork_19368_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19368_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19368_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19368_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb1/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-=
tglb8/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@all-pipes-single-bo:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-hsw6/igt@kms_cursor_legacy@all-pipes-single-bo.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9368/shard-hsw2/igt@kms_cursor_legacy@all-pipes-single-bo.html">INCOMPLETE<=
/a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19368_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk9/igt@drm_import_export@prime.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk=
4/igt@drm_import_export@prime.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-hsw2/igt@gem_ctx_persistence@legacy-eng=
ines-persistence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1099">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19368/shard-glk5/igt@gem_exec_whisper@basic-contexts-priority.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
5">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19368/shard-glk1/igt@gem_userptr_blits@vma-merge.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2502">i915#2502</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2667">i915#2667</a>)</p>
</li>
<li>
<p>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19368/shard-hsw4/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/272=
4">i915#2724</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-skl3/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#4=
54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_193=
68/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-hsw4/igt@kms_big_fb@y-tiled-addfb-size-=
overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +243 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_ccs@pipe-c-bad-aux-stride.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl7/igt@kms_color@pipe-b-ctm-red-to-blue.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/=
shard-skl8/igt@kms_color@pipe-b-ctm-red-to-blue.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-hsw4/igt@kms_color_chamelium@pipe-c-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19368/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-1=
28x42-random.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19368/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19368/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2598">i915#2598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9368/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-hsw4/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1936=
8/shard-hsw6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#=
2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19368/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible=
@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2628">i915#2628</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-glk1/igt@kms_frontbuffer_tracking@fbcps=
r-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-skl5/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl3/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard-skl9/igt=
@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19368/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19368/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard=
-iclb7/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar iss=
ue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-apl3/igt@api_intel_bb@render-ccs.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2499">i915#=
2499</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19368/shard-apl3/igt@api_intel_bb@render-ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-share@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19368/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-solo@rcs0}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19368/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@rcs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_193=
68/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vcs1}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9368/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl4/igt@gem_exec_flush@basic-uc-set-default.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19368/shard-skl10/igt@gem_exec_flush@basic-uc-set-default.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl9/igt@gem_workarounds@suspend-resume-context.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/14=
6">i915#146</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/198">i915#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19368/shard-skl4/igt@gem_workarounds@suspend-resume-con=
text.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk5/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19368/shard-glk1/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i=
915#151</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19368/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19368/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html"=
>PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i=
915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19368/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/sha=
rd-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19368/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe=
-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-kbl2/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/78">i915#78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19368/shard-kbl3/igt@kms_plane_cursor@pipe-b-viewport-size-64=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9368/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19368/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19368/shard-kbl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368/shard=
-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk9/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9622/shard-glk5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19368=
/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19368/shard-glk4/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
368/shard-glk2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a hre=
f=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>=
)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9622 -&gt; Patchwork_19368</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9622: 1612b668c881dacf505c6f56c7b2a39d9e0d903a @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19368: fb6fb58c719864a6f245e1681a4fb4665985e2a4 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6049436051799462993==--

--===============0928666418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0928666418==--
