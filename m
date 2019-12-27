Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B3612B4F9
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 14:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D42A6E44B;
	Fri, 27 Dec 2019 13:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFD196E44B;
 Fri, 27 Dec 2019 13:52:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5361A0BC6;
 Fri, 27 Dec 2019 13:52:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 27 Dec 2019 13:52:12 -0000
Message-ID: <157745473267.27187.12655663715254032533@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191224231521.3430660-1-matthew.d.roper@intel.com>
In-Reply-To: <20191224231521.3430660-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Assume_future_platforms_will_inherit_TGL=27s_SFC_c?=
 =?utf-8?q?apability_=28rev2=29?=
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

Series: drm/i915/tgl: Assume future platforms will inherit TGL's SFC capability (rev2)
URL   : https://patchwork.freedesktop.org/series/71371/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7637_full -> Patchwork_15927_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15927_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15927_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15927_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-snb2/igt@gem_eio@reset-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-snb6/igt@gem_eio@reset-stress.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-x.html

  
Known issues
------------

  Here are the changes found in Patchwork_15927_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#456])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb1/igt@gem_ctx_isolation@rcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([fdo#111735])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb1/igt@gem_ctx_shared@q-smoketest-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb3/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#456] / [i915#460] / [i915#534])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb2/igt@gem_eio@in-flight-suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111606] / [fdo#111677])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +5 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#54]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#52] / [i915#54])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#79])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#34])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][24] -> [FAIL][25] ([i915#49]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#49])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#53])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([fdo#108145]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([fdo#108145] / [i915#265])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#460])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_cs_tlb@vcs1:
    - shard-tglb:         [INCOMPLETE][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb4/igt@gem_cs_tlb@vcs1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb1/igt@gem_cs_tlb@vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][38] ([i915#180]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [FAIL][40] ([i915#490]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-snb4/igt@gem_eio@in-flight-1us.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-snb6/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][42] ([fdo#111593]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb8/igt@gem_exec_gttfill@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb5/igt@gem_exec_gttfill@basic.html

  * igt@gem_persistent_relocs@forked-interruptible:
    - shard-apl:          [FAIL][44] ([i915#520]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-apl1/igt@gem_persistent_relocs@forked-interruptible.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-apl3/igt@gem_persistent_relocs@forked-interruptible.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][46] ([i915#644]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][48] ([i915#716]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-apl2/igt@gen9_exec_parse@allowed-single.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-tglb:         [INCOMPLETE][50] ([i915#456] / [i915#460]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb3/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][52] ([i915#93] / [i915#95]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-kbl2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-kbl1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][54] ([i915#54]) -> [PASS][55] +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
    - shard-snb:          [SKIP][56] ([fdo#109271]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-snb4/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][58] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb1/igt@kms_fbcon_fbt@fbc-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][60] ([i915#79]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip_tiling@flip-to-yf-tiled:
    - shard-skl:          [FAIL][62] ([fdo#107931] / [i915#167]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl7/igt@kms_flip_tiling@flip-to-yf-tiled.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl6/igt@kms_flip_tiling@flip-to-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [FAIL][64] ([i915#49]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [DMESG-WARN][66] ([i915#109]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][70] ([fdo#111912] / [fdo#112080]) -> [SKIP][71] ([fdo#112080])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb8/igt@gem_ctx_isolation@vcs2-clean.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][72] ([fdo#112080]) -> [SKIP][73] ([fdo#111912] / [fdo#112080])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-tglb3/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][74] ([i915#444]) -> [INCOMPLETE][75] ([i915#82])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/shard-snb6/igt@gem_eio@kms.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/shard-snb2/igt@gem_eio@kms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7637 -> Patchwork_15927

  CI-20190529: 20190529
  CI_DRM_7637: 0fc0908e6c01a7ebed3baff96bb4a50675431e82 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15927: 3a43a99a4f19745113e7301463e9e4a18a1ba3d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15927/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
