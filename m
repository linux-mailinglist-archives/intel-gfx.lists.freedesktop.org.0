Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 595BD1EE004
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 10:47:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED0B76E2B8;
	Thu,  4 Jun 2020 08:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D56606E2B8;
 Thu,  4 Jun 2020 08:47:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CCE6EA363D;
 Thu,  4 Jun 2020 08:47:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 04 Jun 2020 08:47:32 -0000
Message-ID: <159126045280.14554.5059977157347722996@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603211040.8190-1-imre.deak@intel.com>
In-Reply-To: <20200603211040.8190-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/dp=5Fmst=3A_Fix_disabling_?=
 =?utf-8?q?MST_on_a_port_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915/dp_mst: Fix disabling MST on a port (rev2)
URL   : https://patchwork.freedesktop.org/series/77969/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17861_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17861_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#95]) +16 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl3/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl4/igt@kms_color@pipe-c-ctm-0-25.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-skl2/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-size-change:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-size-change.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-size-change.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#1925] / [i915#1926])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-glk7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-glk5/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#49])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#53])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#31])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_setmode@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl8/igt@kms_setmode@basic.html

  * igt@syncobj_wait@single-wait-all-signaled:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#93] / [i915#95]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@syncobj_wait@single-wait-all-signaled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-kbl7/igt@syncobj_wait@single-wait-all-signaled.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-kbl:          [FAIL][25] ([fdo#103375]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * {igt@gem_ctx_isolation@preservation-s3@vcs0}:
    - shard-kbl:          [INCOMPLETE][27] ([i915#1780]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][29] ([i915#1930]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_schedule@implicit-write-read@rcs0}:
    - shard-snb:          [INCOMPLETE][31] ([i915#82]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-snb4/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [DMESG-WARN][33] ([i915#118] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [TIMEOUT][37] ([i915#1635]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl3/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-tglb:         [DMESG-WARN][41] ([i915#402]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][43] ([i915#46]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-kbl:          [DMESG-WARN][45] ([i915#93] / [i915#95]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
    - shard-tglb:         [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][49] ([i915#69]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-position-hole-pipe-a-planes:
    - shard-skl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl4/igt@kms_plane@plane-position-hole-pipe-a-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-skl2/igt@kms_plane@plane-position-hole-pipe-a-planes.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-iclb5/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-tglb:         [FAIL][57] ([i915#1542]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@perf@blocking-parameterized.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-tglb7/igt@perf@blocking-parameterized.html

  * igt@vgem_basic@dmabuf-mmap:
    - shard-apl:          [DMESG-WARN][59] ([i915#95]) -> [PASS][60] +6 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@vgem_basic@dmabuf-mmap.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl3/igt@vgem_basic@dmabuf-mmap.html

  
#### Warnings ####

  * igt@gem_ctx_bad_destroy@invalid-pad:
    - shard-apl:          [TIMEOUT][61] ([i915#1635]) -> [DMESG-WARN][62] ([i915#95])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@gem_ctx_bad_destroy@invalid-pad.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl7/igt@gem_ctx_bad_destroy@invalid-pad.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][63] ([i915#454]) -> [SKIP][64] ([i915#468])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-snb:          [SKIP][65] ([fdo#109271]) -> [INCOMPLETE][66] ([i915#82])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb4/igt@i915_pm_rpm@sysfs-read.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-snb4/igt@i915_pm_rpm@sysfs-read.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][67] ([i915#1319] / [i915#1635]) -> [TIMEOUT][68] ([i915#1319])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_content_protection@atomic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][69] ([i915#1319]) -> [TIMEOUT][70] ([i915#1319] / [i915#1635])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][71] ([fdo#110321]) -> [TIMEOUT][72] ([i915#1319] / [i915#1635])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_content_protection@srm.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#93] / [i915#95]) -> [DMESG-WARN][74] ([i915#180] / [i915#93] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - shard-apl:          [TIMEOUT][75] ([i915#1635] / [i915#1640]) -> [SKIP][76] ([fdo#109271])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@kms_vblank@pipe-d-query-idle-hang.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/shard-apl7/igt@kms_vblank@pipe-d-query-idle-hang.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1640]: https://gitlab.freedesktop.org/drm/intel/issues/1640
  [i915#1780]: https://gitlab.freedesktop.org/drm/intel/issues/1780
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8579 -> Patchwork_17861

  CI-20190529: 20190529
  CI_DRM_8579: 289eb12c88c49a4ac8d325dc457d8878c7f5bdc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17861: 10ec0f0a95d1ed7b600df217f021788844964bc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17861/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
