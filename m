Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EAB21BEF3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 23:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D0186ED12;
	Fri, 10 Jul 2020 21:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A89A6ED0B;
 Fri, 10 Jul 2020 21:03:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9472EA47EB;
 Fri, 10 Jul 2020 21:03:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Jul 2020 21:03:51 -0000
Message-ID: <159441503160.20499.9563269650454288222@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200710171001.22935-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200710171001.22935-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Be_wary_of_data_races_when_reading_the_active_execlist?=
 =?utf-8?q?s?=
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

Series: drm/i915: Be wary of data races when reading the active execlists
URL   : https://patchwork.freedesktop.org/series/79360/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8728_full -> Patchwork_18134_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18134_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_create@madvise:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-glk6/igt@gem_exec_create@madvise.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-glk6/igt@gem_exec_create@madvise.html

  * igt@gem_exec_params@invalid-batch-start-offset:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#165])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl3/igt@gem_exec_params@invalid-batch-start-offset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl2/igt@gem_exec_params@invalid-batch-start-offset.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-snb2/igt@gem_fenced_exec_thrash@2-spare-fences.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-snb1/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][9] -> [DMESG-FAIL][10] ([i915#54] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1635] / [i915#95]) +16 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-apl3/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-apl1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1635] / [i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-apl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +11 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl7/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl9/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_flip_tiling@flip-to-x-tiled:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#167])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl6/igt@kms_flip_tiling@flip-to-x-tiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl1/igt@kms_flip_tiling@flip-to-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl7/igt@kms_hdr@bpc-switch.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#53])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][27] -> [INCOMPLETE][28] ([i915#155])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@sysfs_timeslice_duration@timeout@vcs0:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#1755])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-tglb7/igt@sysfs_timeslice_duration@timeout@vcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-tglb5/igt@sysfs_timeslice_duration@timeout@vcs0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#1755])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-iclb8/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-iclb2/igt@sysfs_timeslice_duration@timeout@vecs0.html
    - shard-kbl:          [PASS][37] -> [FAIL][38] ([i915#1755])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl3/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl7/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed@vecs0:
    - shard-skl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl8/igt@gem_ctx_persistence@engines-mixed@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl4/igt@gem_ctx_persistence@engines-mixed@vecs0.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [FAIL][41] ([i915#2079]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl7/igt@gem_exec_balancer@bonded-early.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl1/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:
    - shard-iclb:         [INCOMPLETE][43] ([i915#2119]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-iclb7/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-iclb3/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl3/igt@gem_workarounds@suspend-resume.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl1/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][47] ([i915#1436] / [i915#716]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock@requests:
    - shard-apl:          [INCOMPLETE][49] ([i915#1635] / [i915#2110]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-apl7/igt@i915_selftest@mock@requests.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-apl2/igt@i915_selftest@mock@requests.html

  * igt@kms_atomic_interruptible@universal-setplane-primary:
    - shard-apl:          [DMESG-WARN][51] ([i915#1635] / [i915#95]) -> [PASS][52] +10 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-apl1/igt@kms_atomic_interruptible@universal-setplane-primary.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-apl2/igt@kms_atomic_interruptible@universal-setplane-primary.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][53] ([i915#118] / [i915#95]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-glk6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-glk:          [INCOMPLETE][55] ([i915#58] / [k.org#198133]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
    - shard-tglb:         [DMESG-WARN][57] ([i915#402]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-tglb2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-tglb2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][59] ([i915#79]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [DMESG-FAIL][61] ([i915#1982] / [i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][63] ([i915#198]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][65] ([i915#2122]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-glk:          [FAIL][67] ([fdo#103375]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-glk3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][71] ([i915#173]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-iclb1/igt@kms_psr@no_drrs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@sysfs_timeslice_duration@timeout@rcs0:
    - shard-skl:          [FAIL][75] ([i915#1732]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl2/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl10/igt@sysfs_timeslice_duration@timeout@rcs0.html

  * igt@sysfs_timeslice_duration@timeout@vcs0:
    - shard-iclb:         [FAIL][77] ([i915#1755]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-iclb8/igt@sysfs_timeslice_duration@timeout@vcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-iclb2/igt@sysfs_timeslice_duration@timeout@vcs0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-tglb:         [FAIL][79] ([i915#1755]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-tglb7/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-tglb5/igt@sysfs_timeslice_duration@timeout@vecs0.html
    - shard-skl:          [FAIL][81] ([i915#1755]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-skl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-skl10/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][83] ([i915#658]) -> [SKIP][84] ([i915#588])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [SKIP][85] ([fdo#109271]) -> [INCOMPLETE][86] ([i915#82])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-snb5/igt@i915_pm_dc@dc5-psr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-snb6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][87] ([i915#1515]) -> [WARN][88] ([i915#1515])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][89] ([i915#1319] / [i915#1958] / [i915#2119]) -> [DMESG-FAIL][90] ([fdo#110321] / [i915#95])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl4/igt@kms_content_protection@srm.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-kbl:          [DMESG-WARN][91] ([i915#93] / [i915#95]) -> [DMESG-WARN][92] ([i915#78] / [i915#93] / [i915#95])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge:
    - shard-apl:          [DMESG-WARN][93] ([i915#1635] / [i915#95]) -> [DMESG-FAIL][94] ([i915#1635] / [i915#70] / [i915#95])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-apl1/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-apl6/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][96] ([i915#93] / [i915#95])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@runner@aborted:
    - shard-tglb:         ([FAIL][97], [FAIL][98]) ([i915#2110]) -> [FAIL][99] ([i915#1764] / [i915#2110])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-tglb7/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8728/shard-tglb8/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/shard-tglb3/igt@runner@aborted.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8728 -> Patchwork_18134

  CI-20190529: 20190529
  CI_DRM_8728: f8a518551dbe5b5bc460555eb4b2af4f57b92335 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5730: bc81be6915e4e23a5dc52f50a0c67462e321963f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18134: d6de2d39c3853eb33668e4d88146feaca46268ec @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18134/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
