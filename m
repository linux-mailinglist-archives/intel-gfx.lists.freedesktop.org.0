Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF63294089
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 18:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5CA6ED25;
	Tue, 20 Oct 2020 16:31:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B7096ED1D;
 Tue, 20 Oct 2020 16:31:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2221AA3ECB;
 Tue, 20 Oct 2020 16:31:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 20 Oct 2020 16:31:19 -0000
Message-ID: <160321147910.24449.7625740200665705578@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201019111441.5611-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201019111441.5611-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Flush_the_old_heartbeat_more_gently_=28rev3?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============1067595266=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1067595266==
Content-Type: multipart/alternative;
 boundary="===============4131998576460648834=="

--===============4131998576460648834==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Flush the old heartbeat more gently (rev3)
URL   : https://patchwork.freedesktop.org/series/82815/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9169_full -> Patchwork_18741_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18741_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18741_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18741_full:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@coherency-blt:
    - shard-snb:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-snb2/igt@prime_vgem@coherency-blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-snb4/igt@prime_vgem@coherency-blt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@core_hotunplug@hotrebind}:
    - shard-hsw:          NOTRUN -> [WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-hsw2/igt@core_hotunplug@hotrebind.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec4 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][4] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec4.html

  * spec@glsl-1.30@execution@built-in-functions@vs-atanh-float (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][5] +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@vs-atanh-float.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9169_full and Patchwork_18741_full:

### New Piglit tests (10) ###

  * spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec4:
    - Statuses : 1 crash(s)
    - Exec time: [0.31] s

  * spec@glsl-1.30@execution@built-in-functions@fs-op-mult-uvec4-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@fs-op-rshift-int-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@vs-atanh-float:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@vs-op-assign-bitor-ivec2-ivec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@vs-op-assign-bitor-uvec2-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@vs-op-assign-lshift-ivec2-int:
    - Statuses : 1 crash(s)
    - Exec time: [0.39] s

  * spec@glsl-1.30@execution@built-in-functions@vs-op-bitand-neg-abs-int-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@vs-op-bitxor-not-uvec4-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@vs-op-sub-uint-uvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18741_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][6] -> [DMESG-WARN][7] ([i915#118] / [i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk3/igt@gem_exec_whisper@basic-forked-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][8] -> [SKIP][9] ([i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [PASS][10] -> [TIMEOUT][11] ([i915#2424])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl2/igt@gem_userptr_blits@sync-unmap-cycles.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl5/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][12] -> [INCOMPLETE][13] ([i915#155])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-kbl7/igt@i915_suspend@debugfs-reader.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-kbl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][14] -> [DMESG-FAIL][15] ([i915#118] / [i915#95])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-snb:          [PASS][16] -> [FAIL][17] ([i915#54])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-snb2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-snb4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#165])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#2122])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1635] / [i915#1982]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-snb:          [PASS][24] -> [FAIL][25] ([i915#2546])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-snb7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-snb7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-tglb:         [PASS][26] -> [DMESG-WARN][27] ([i915#1982]) +6 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-glk:          [PASS][28] -> [DMESG-WARN][29] ([i915#1982])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk5/igt@kms_plane_cursor@pipe-a-primary-size-256.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk6/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1982]) +7 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl5/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl3/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb1/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][34] -> [FAIL][35] ([i915#1635] / [i915#31])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-apl4/igt@kms_setmode@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-apl4/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#1982])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-kbl4/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-kbl4/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][38] -> [FAIL][39] ([i915#1542])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb1/igt@perf@polling-parameterized.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb6/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [PASS][40] -> [DMESG-WARN][41] ([i915#1982])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb7/igt@perf_pmu@module-unload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb5/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * {igt@core_hotunplug@hotrebind}:
    - shard-iclb:         [DMESG-WARN][42] ([i915#1982]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb8/igt@core_hotunplug@hotrebind.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb8/igt@core_hotunplug@hotrebind.html

  * {igt@gem_ctx_persistence@userptr}:
    - shard-skl:          [DMESG-WARN][44] ([i915#1982]) -> [PASS][45] +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl7/igt@gem_ctx_persistence@userptr.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl1/igt@gem_ctx_persistence@userptr.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-hsw:          [FAIL][46] ([i915#2389]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-hsw2/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [FAIL][48] ([i915#2389]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk1/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][50] ([i915#118] / [i915#95]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk3/igt@gem_exec_whisper@basic-contexts.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk4/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [FAIL][52] -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-hsw:          [FAIL][54] ([i915#2370]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-apl:          [DMESG-WARN][56] ([i915#1635] / [i915#1982]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-apl7/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-skl:          [TIMEOUT][58] -> [PASS][59] +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@dpms-off-confusion-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][60] ([i915#1982]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-kbl2/igt@kms_flip@dpms-off-confusion-interruptible@a-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-kbl1/igt@kms_flip@dpms-off-confusion-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [FAIL][62] ([i915#79]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][64] ([i915#79]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][66] ([i915#1188]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][68] ([fdo#108145] / [i915#265]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][72] ([i915#31]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-hsw4/igt@kms_setmode@basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-hsw6/igt@kms_setmode@basic.html

  * igt@perf@enable-disable:
    - shard-skl:          [FAIL][74] ([i915#1352]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl5/igt@perf@enable-disable.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl3/igt@perf@enable-disable.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [DMESG-WARN][76] ([i915#1982]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-tglb3/igt@perf_pmu@module-unload.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-tglb2/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@kms_atomic_transition@1x-modeset-transitions-nonblocking:
    - shard-skl:          [TIMEOUT][78] -> [DMESG-WARN][79] ([i915#1982])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl10/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl10/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1352]: https://gitlab.freedesktop.org/drm/intel/issues/1352
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9169 -> Patchwork_18741

  CI-20190529: 20190529
  CI_DRM_9169: 8a581847c1bea831f8edfbb813225df47fe28a3a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18741: 206cf50b2878502459afed576124e976433452bd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/index.html

--===============4131998576460648834==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Flush the old heartbeat more gently (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82815/">https://patchwork.freedesktop.org/series/82815/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9169_full -&gt; Patchwork_18741_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18741_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18741_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18741_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@prime_vgem@coherency-blt:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-snb2/igt@prime_vgem@coherency-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-snb4/igt@prime_vgem@coherency-blt.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@core_hotunplug@hotrebind}:<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-hsw2/igt@core_hotunplug@hotrebind.html">WARN</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec4 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec4.html">CRASH</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-atanh-float (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@vs-atanh-float.html">INCOMPLETE</a> +7 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9169_full and Patchwork_18741_full:</p>
<h3>New Piglit tests (10)</h3>
<ul>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec4:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.31] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-op-mult-uvec4-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-op-rshift-int-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-atanh-float:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-assign-bitor-ivec2-ivec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-assign-bitor-uvec2-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-assign-lshift-ivec2-int:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.39] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-bitand-neg-abs-int-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-bitxor-not-uvec4-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-sub-uint-uvec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18741_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk3/igt@gem_exec_whisper@basic-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl2/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl5/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-kbl7/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-kbl1/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-snb2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-snb4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-snb7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-snb7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-256:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk5/igt@kms_plane_cursor@pipe-a-primary-size-256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk6/igt@kms_plane_cursor@pipe-a-primary-size-256.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl5/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl3/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb1/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-apl4/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-apl4/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-kbl4/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-kbl4/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb1/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb6/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb7/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb5/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@core_hotunplug@hotrebind}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb8/igt@core_hotunplug@hotrebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb8/igt@core_hotunplug@hotrebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_ctx_persistence@userptr}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl7/igt@gem_ctx_persistence@userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl1/igt@gem_ctx_persistence@userptr.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-hsw2/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk1/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk3/igt@gem_exec_whisper@basic-contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk4/igt@gem_exec_whisper@basic-contexts.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#2370</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-apl7/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-kbl2/igt@kms_flip@dpms-off-confusion-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-kbl1/igt@kms_flip@dpms-off-confusion-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-hsw4/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-hsw6/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl5/igt@perf@enable-disable.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1352">i915#1352</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl3/igt@perf@enable-disable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-tglb3/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-tglb2/igt@perf_pmu@module-unload.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_atomic_transition@1x-modeset-transitions-nonblocking:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9169/shard-skl10/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18741/shard-skl10/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9169 -&gt; Patchwork_18741</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9169: 8a581847c1bea831f8edfbb813225df47fe28a3a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18741: 206cf50b2878502459afed576124e976433452bd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4131998576460648834==--

--===============1067595266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1067595266==--
