Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 616361283CE
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 22:21:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1FC6E14F;
	Fri, 20 Dec 2019 21:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5AAE6E14F;
 Fri, 20 Dec 2019 21:21:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB89CA0099;
 Fri, 20 Dec 2019 21:21:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 20 Dec 2019 21:21:31 -0000
Message-ID: <157687689167.9210.13646408272048970924@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219133845.9333-1-jani.nikula@intel.com>
In-Reply-To: <20191219133845.9333-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_comment_for_POWER=5FDOMAIN=5FTRANSCODER=5FVDSC=5FP?=
 =?utf-8?q?W2?=
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

Series: drm/i915: fix comment for POWER_DOMAIN_TRANSCODER_VDSC_PW2
URL   : https://patchwork.freedesktop.org/series/71175/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7607_full -> Patchwork_15843_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15843_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15843_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15843_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-hsw7/igt@gem_tiled_partial_pwrite_pread@writes.html

  
Known issues
------------

  Here are the changes found in Patchwork_15843_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-skl:          [PASS][2] -> [INCOMPLETE][3] ([i915#69])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl4/igt@gem_ctx_isolation@vecs0-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl2/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_eio@kms:
    - shard-glk:          [PASS][4] -> [INCOMPLETE][5] ([i915#58] / [k.org#198133])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-glk8/igt@gem_eio@kms.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-glk1/igt@gem_eio@kms.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#435])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb5/igt@gem_exec_create@madvise.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb6/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111677])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb4/igt@gem_exec_schedule@preempt-queue-vebox.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb6/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [PASS][10] -> [TIMEOUT][11] ([fdo#112126] / [i915#530])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb9/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#472] / [i915#707])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb5/igt@gem_sync@basic-many-each.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb5/igt@gem_sync@basic-many-each.html

  * igt@gem_wait@busy-vcs0:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#109]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl5/igt@gem_wait@busy-vcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl6/igt@gem_wait@busy-vcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#456] / [i915#460])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb7/igt@gem_workarounds@suspend-resume.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb4/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] ([i915#198])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl2/igt@i915_pm_dc@dc6-psr.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#54]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#300])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +10 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - shard-skl:          [PASS][26] -> [INCOMPLETE][27] ([i915#646] / [i915#667])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#52] / [i915#54])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][32] -> [FAIL][33] ([i915#49]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#474] / [i915#667])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#49]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][38] -> [INCOMPLETE][39] ([fdo#103665])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([fdo#108145] / [i915#265]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [INCOMPLETE][44] ([fdo#111736]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb1/igt@gem_exec_parallel@vecs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb7/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][46] ([i915#707]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][48] ([i915#644]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][50] ([i915#435] / [i915#472]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb9/igt@gem_sync@basic-store-each.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb9/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][52] ([i915#180]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-apl4/igt@gem_workarounds@suspend-resume.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-apl1/igt@gem_workarounds@suspend-resume.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-skl:          [DMESG-WARN][54] ([i915#716]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl3/igt@gen9_exec_parse@allowed-all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl6/igt@gen9_exec_parse@allowed-all.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-glk:          [DMESG-WARN][56] ([i915#716]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-glk8/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180:
    - shard-skl:          [INCOMPLETE][58] -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][60] ([i915#109]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-skl:          [INCOMPLETE][62] ([i915#646] / [i915#667]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][64] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][66] ([i915#79]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [DMESG-WARN][68] ([i915#766]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - shard-tglb:         [INCOMPLETE][72] ([i915#456] / [i915#460]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][74] ([i915#648] / [i915#667]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][76] ([fdo#108145]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@perf@short-reads:
    - shard-glk:          [TIMEOUT][78] ([i915#51]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-glk7/igt@perf@short-reads.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-glk5/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][80] ([fdo#112080]) -> [SKIP][81] ([fdo#111912] / [fdo#112080])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb3/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][82] ([fdo#111912] / [fdo#112080]) -> [SKIP][83] ([fdo#112080])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb2/igt@gem_ctx_isolation@vcs2-none.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html

  * igt@i915_pm_rpm@cursor:
    - shard-snb:          [SKIP][84] ([fdo#109271]) -> [INCOMPLETE][85] ([i915#82])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-snb6/igt@i915_pm_rpm@cursor.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/shard-snb7/igt@i915_pm_rpm@cursor.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7607 -> Patchwork_15843

  CI-20190529: 20190529
  CI_DRM_7607: a5637870d1eaf736172c3444c02ebe5f7d2ad161 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15843: cf9315872693f732b909d52257f13dad6c4c6367 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15843/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
