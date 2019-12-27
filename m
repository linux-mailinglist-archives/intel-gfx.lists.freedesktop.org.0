Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0E612B445
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 12:40:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C40891E3;
	Fri, 27 Dec 2019 11:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F4ED891E3;
 Fri, 27 Dec 2019 11:40:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EF7CA363D;
 Fri, 27 Dec 2019 11:40:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Date: Fri, 27 Dec 2019 11:40:17 -0000
Message-ID: <157744681755.27188.13442322688927873393@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191225175514.21271-1-swati2.sharma@intel.com>
In-Reply-To: <20191225175514.21271-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_Increase_log_level_if_DSB_engine_gets_busy?=
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

Series: drm/i915/dsb: Increase log level if DSB engine gets busy
URL   : https://patchwork.freedesktop.org/series/71379/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7634_full -> Patchwork_15923_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15923_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15923_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15923_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_available_modes_crc@available_mode_test_crc:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb6/igt@kms_available_modes_crc@available_mode_test_crc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb4/igt@kms_available_modes_crc@available_mode_test_crc.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7634_full and Patchwork_15923_full:

### New Piglit tests (5) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec2_array5-position-uint_uint:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_float_array3-position-double_dmat3:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_vec3-double_dmat4:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uint-double_double-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-int_ivec2-double_dmat2x3_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  

Known issues
------------

  Here are the changes found in Patchwork_15923_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb5/igt@gem_ctx_shared@q-smoketest-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb9/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#435]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb8/igt@gem_exec_create@madvise.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb8/igt@gem_exec_create@madvise.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#109]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl3/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl8/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#520])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-kbl7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb7/igt@gem_sync@basic-store-each.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb9/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#456] / [i915#460])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb8/igt@gem_workarounds@suspend-resume-fd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [PASS][15] -> [INCOMPLETE][16] ([i915#58] / [k.org#198133])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-glk6/igt@i915_selftest@mock_requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-glk1/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#300])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#49]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-shared-gtt-vebox:
    - shard-kbl:          [FAIL][27] ([i915#616]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-kbl3/igt@gem_ctx_shared@exec-shared-gtt-vebox.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-kbl6/igt@gem_ctx_shared@exec-shared-gtt-vebox.html

  * igt@gem_eio@kms:
    - shard-glk:          [INCOMPLETE][29] ([i915#58] / [k.org#198133]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-glk3/igt@gem_eio@kms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-glk8/igt@gem_eio@kms.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][31] ([i915#435]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb6/igt@gem_exec_nop@basic-sequential.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb8/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][33] ([i915#463]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-tglb:         [TIMEOUT][35] ([fdo#112126] / [i915#530]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl8/igt@gem_softpin@noreloc-s3.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl9/igt@gem_softpin@noreloc-s3.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-glk:          [DMESG-WARN][39] ([i915#716]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-glk6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [INCOMPLETE][41] ([fdo#112057]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb6/igt@i915_selftest@live_requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb2/igt@i915_selftest@live_requests.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [INCOMPLETE][43] ([i915#198]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl2/igt@i915_selftest@mock_requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl5/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-kbl1/igt@i915_suspend@sysfs-reader.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-kbl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [FAIL][47] ([i915#182]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl6/igt@kms_color@pipe-a-ctm-0-25.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl1/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-random:
    - shard-apl:          [DMESG-WARN][51] ([IGT#6]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [FAIL][53] ([i915#52] / [i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][59] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][61] ([i915#49]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [FAIL][63] ([i915#49]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [FAIL][65] ([i915#53]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl10/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [INCOMPLETE][69] ([i915#456] / [i915#460]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-tglb5/igt@kms_psr@psr2_suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-tglb2/igt@kms_psr@psr2_suspend.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [INCOMPLETE][71] ([i915#61]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][73] ([i915#82]) -> [DMESG-WARN][74] ([i915#444])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-snb2/igt@gem_eio@kms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-snb6/igt@gem_eio@kms.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][75] ([k.org#202321]) -> [FAIL][76] ([i915#873] / [k.org#202321])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/shard-glk5/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/shard-glk1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#182]: https://gitlab.freedesktop.org/drm/intel/issues/182
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7634 -> Patchwork_15923

  CI-20190529: 20190529
  CI_DRM_7634: a20d8cd6901aec154de1c0800d5a7f17d43c5b1e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15923: bcd235881929a531a1fcbc897c9d2fb43da7ee54 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15923/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
