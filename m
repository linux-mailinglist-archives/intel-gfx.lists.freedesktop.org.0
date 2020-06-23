Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD49C205014
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 13:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 592056E0CC;
	Tue, 23 Jun 2020 11:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A5526E0CC;
 Tue, 23 Jun 2020 11:11:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5343EA0091;
 Tue, 23 Jun 2020 11:11:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 23 Jun 2020 11:11:46 -0000
Message-ID: <159291070631.27519.2625554200756771836@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623082411.3889-1-imre.deak@intel.com>
In-Reply-To: <20200623082411.3889-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=5Fmst=3A_Enable_VC_payload_allocation_after_transcoder?=
 =?utf-8?q?_is_enabled?=
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

Series: drm/i915/dp_mst: Enable VC payload allocation after transcoder is enabled
URL   : https://patchwork.freedesktop.org/series/78728/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8655_full -> Patchwork_18009_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18009_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18009_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18009_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat4x2_array3-double_dmat3x2 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][3] +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat4x2_array3-double_dmat3x2.html

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-uint_uvec2_array3-double_dvec3_array2 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][4] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-uint_uvec2_array3-double_dvec3_array2.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8655_full and Patchwork_18009_full:

### New Piglit tests (11) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat3_array3-position-double_dmat3x4_array2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat3-int_ivec3_array3:
    - Statuses : 1 crash(s)
    - Exec time: [1.00] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat3x2_array3-double_dmat3x2_array2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec3-float_mat4x2_array3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat4x2_array3-double_dmat3x2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-int_ivec2-double_dmat3x4:
    - Statuses : 1 crash(s)
    - Exec time: [0.84] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uint-short_ivec4-double_dmat2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-uint_uvec2_array3-double_dvec3_array2:
    - Statuses : 1 crash(s)
    - Exec time: [0.92] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uvec2-short_int-position-double_dmat2x4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uint_array3-position-double_dmat4x3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18009_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-glk:          [PASS][5] -> [INCOMPLETE][6] ([i915#58] / [k.org#198133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-glk1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-glk8/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-glk8/igt@gem_exec_schedule@smoketest-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-glk5/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_vm_create@isolation:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#95]) +16 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-apl6/igt@gem_vm_create@isolation.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-apl3/igt@gem_vm_create@isolation.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1436] / [i915#716])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl1/igt@gen9_exec_parse@allowed-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl2/igt@gen9_exec_parse@allowed-all.html
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1436] / [i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#636] / [i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl5/igt@i915_suspend@forcewake.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl5/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-apl4/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-apl4/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-glk6/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-glk2/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-iclb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#93] / [i915#95]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-kbl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +7 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [DMESG-FAIL][30] ([fdo#108145] / [i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +13 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl7/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl8/igt@kms_plane_cursor@pipe-b-viewport-size-128.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#899])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#1542])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-iclb4/igt@perf@blocking-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-iclb3/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_eio@kms:
    - shard-kbl:          [DMESG-WARN][37] ([i915#93] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-kbl4/igt@gem_eio@kms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-kbl6/igt@gem_eio@kms.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-apl7/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-apl1/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][43] ([i915#118] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-glk5/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl10/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][47] ([i915#46]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-skl:          [FAIL][51] ([i915#699]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl9/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl3/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_flip_tiling@flip-to-x-tiled:
    - shard-skl:          [FAIL][53] ([i915#167]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl9/igt@kms_flip_tiling@flip-to-x-tiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl3/igt@kms_flip_tiling@flip-to-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-kbl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-skl:          [FAIL][59] ([i915#49]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl4/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - shard-skl:          [FAIL][63] ([i915#53]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl3/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-kbl:          [FAIL][65] ([i915#1779]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-kbl4/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-kbl6/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@vgem_slow@nohang:
    - shard-apl:          [DMESG-WARN][67] ([i915#1635] / [i915#95]) -> [PASS][68] +11 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-apl7/igt@vgem_slow@nohang.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-apl8/igt@vgem_slow@nohang.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][69] ([i915#1930]) -> [TIMEOUT][70] ([i915#1958])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-snb1/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-apl:          [SKIP][71] ([fdo#109271] / [i915#1635]) -> [SKIP][72] ([fdo#109271]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-apl7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-apl8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          [SKIP][73] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-apl7/igt@kms_chamelium@dp-crc-multiple.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-apl3/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          [SKIP][75] ([fdo#109271] / [fdo#111827]) -> [SKIP][76] ([fdo#109271] / [fdo#111827] / [i915#1635]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-apl8/igt@kms_chamelium@vga-hpd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-apl7/igt@kms_chamelium@vga-hpd.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-snb:          [SKIP][77] ([fdo#109271]) -> [TIMEOUT][78] ([i915#1958]) +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-snb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-snb1/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [DMESG-WARN][79] ([i915#1982]) -> [DMESG-FAIL][80] ([i915#1982] / [i915#79])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-apl:          [SKIP][81] ([fdo#109271]) -> [SKIP][82] ([fdo#109271] / [i915#1635]) +6 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-apl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-apl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][83] ([fdo#108145] / [i915#1982]) -> [DMESG-WARN][84] ([i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8655/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#1779]: https://gitlab.freedesktop.org/drm/intel/issues/1779
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8655 -> Patchwork_18009

  CI-20190529: 20190529
  CI_DRM_8655: 25d43cec6c2200a9ebe8a8b0923b27b164a6f424 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5716: 71a22c37ae6541f9d991d81f15cbade1da402b75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18009: c95fdf71011e7df7708cea81e3736b24fb8f5189 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18009/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
