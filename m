Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 859B21FC589
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 07:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C9656EA49;
	Wed, 17 Jun 2020 05:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA6336E216;
 Wed, 17 Jun 2020 05:07:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AAF10A00EF;
 Wed, 17 Jun 2020 05:07:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 17 Jun 2020 05:07:35 -0000
Message-ID: <159237045566.29979.13133236687333842422@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200616233733.18050-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200616233733.18050-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Check_preemption_rollback_of_different_ring_?=
 =?utf-8?q?queue_depths_=28rev2=29?=
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

Series: drm/i915/selftests: Check preemption rollback of different ring queue depths (rev2)
URL   : https://patchwork.freedesktop.org/series/78411/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8637_full -> Patchwork_17972_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17972_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [PASS][3] -> [INCOMPLETE][4] ([i915#82])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-snb6/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-snb1/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-glk5/igt@gem_exec_whisper@basic-queues-priority.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-glk7/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_fence_pin_leak:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-kbl6/igt@kms_fence_pin_leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-kbl7/igt@kms_fence_pin_leak.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#198])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][13] -> [DMESG-FAIL][14] ([i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-iclb1/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +10 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-skl4/igt@kms_psr@suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-skl10/igt@kms_psr@suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#1542])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-iclb3/igt@perf@blocking-parameterized.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-iclb3/igt@perf@blocking-parameterized.html

  * igt@syncobj_basic@illegal-fd-to-handle:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#95]) +32 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-apl8/igt@syncobj_basic@illegal-fd-to-handle.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-apl1/igt@syncobj_basic@illegal-fd-to-handle.html

  * igt@template@a:
    - shard-tglb:         [PASS][29] -> [DMESG-WARN][30] ([i915#402])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-tglb8/igt@template@a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-tglb3/igt@template@a.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][31] ([i915#1930]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-glk:          [DMESG-WARN][33] ([i915#118] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-glk2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-glk8/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-apl:          [DMESG-WARN][35] ([i915#95]) -> [PASS][36] +22 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-apl4/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-apl2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-skl10/igt@kms_color@pipe-c-ctm-0-5.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-skl1/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-glk:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-glk8/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-glk2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-kbl1/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-kbl3/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - shard-iclb:         [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][53] ([i915#155]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@module-unload:
    - shard-hsw:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-hsw6/igt@perf_pmu@module-unload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-hsw4/igt@perf_pmu@module-unload.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-skl:          [FAIL][57] ([i915#1732]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-skl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-skl4/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][59] ([i915#1319] / [i915#1958]) -> [TIMEOUT][60] ([i915#1319])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-kbl2/igt@kms_content_protection@lic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-kbl6/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-kbl:          [DMESG-WARN][61] ([i915#93] / [i915#95]) -> [DMESG-FAIL][62] ([i915#54] / [i915#95])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][63] ([fdo#109349]) -> [DMESG-WARN][64] ([i915#1226])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][65] ([i915#1525]) -> [DMESG-FAIL][66] ([i915#95]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][68] ([fdo#108145] / [i915#1982])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8637/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-glk-j5005 


Build changes
-------------

  * Linux: CI_DRM_8637 -> Patchwork_17972

  CI-20190529: 20190529
  CI_DRM_8637: 091db6eff650d91a12485725f764bc60909344fb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17972: c94fe0724411deaec7f7d5c29975200cbaa2cb9f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17972/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
