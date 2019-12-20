Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E00621278B0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 11:00:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A03289E9E;
	Fri, 20 Dec 2019 10:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 48E8189DB9;
 Fri, 20 Dec 2019 10:00:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4029EA0099;
 Fri, 20 Dec 2019 10:00:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Fri, 20 Dec 2019 10:00:27 -0000
Message-ID: <157683602725.9210.11688197971714665069@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217200829.120993-1-rajatja@google.com>
In-Reply-To: <20191217200829.120993-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/3=5D_drm/i915=3A_Move_the_code_to_p?=
 =?utf-8?q?opulate_ACPI_device_ID_into_intel=5Facpi?=
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

Series: series starting with [v4,1/3] drm/i915: Move the code to populate ACPI device ID into intel_acpi
URL   : https://patchwork.freedesktop.org/series/71135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7599_full -> Patchwork_15833_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15833_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#472])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb2/igt@gem_sync@basic-store-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb4/igt@gem_sync@basic-store-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#112057])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb4/igt@i915_selftest@live_requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb1/igt@i915_selftest@live_requests.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#667])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl2/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#109])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl1/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#300])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#460])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([IGT#5])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#221])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#103665])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#456] / [i915#460]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-tglb:         [INCOMPLETE][33] ([i915#456]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb1/igt@gem_ctx_isolation@vecs0-s3.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb9/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-snb:          [TIMEOUT][35] ([i915#530]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [INCOMPLETE][37] ([i915#470] / [i915#472]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb3/igt@gem_sync@basic-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb7/igt@gem_sync@basic-all.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][39] ([i915#413]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb9/igt@i915_pm_rps@reset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb4/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][43] ([i915#54]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-hsw:          [DMESG-WARN][45] ([IGT#6]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-hsw1/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-skl:          [INCOMPLETE][47] ([i915#646]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl6/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [FAIL][49] ([i915#52] / [i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][51] ([i915#49]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][53] ([i915#474] / [i915#667]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][55] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-skl:          [FAIL][57] ([i915#49]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-tglb:         [INCOMPLETE][59] ([i915#456] / [i915#460]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl1/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-apl4/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][67] ([fdo#111912] / [fdo#112080]) -> [SKIP][68] ([fdo#112080])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb1/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][69] ([fdo#112080]) -> [SKIP][70] ([fdo#111912] / [fdo#112080])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb7/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][71] ([fdo#112021]) -> [SKIP][72] ([fdo#112016] / [fdo#112021])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-tglb7/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][73] ([i915#648]) -> [INCOMPLETE][74] ([i915#648] / [i915#667])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  Additional (1): pig-glk-j5005 
  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7599 -> Patchwork_15833

  CI-20190529: 20190529
  CI_DRM_7599: 03dfaf2e5f39b632d0187544f3c988b8596f11b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15833: 46f010dc30eb82f8b1f578398fc03d266dc52b00 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
