Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C50DD23165C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 01:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56AD6E10F;
	Tue, 28 Jul 2020 23:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D03D6E02E;
 Tue, 28 Jul 2020 23:39:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23E9FA73C7;
 Tue, 28 Jul 2020 23:39:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Jul 2020 23:39:46 -0000
Message-ID: <159597958611.21870.6783464976064764137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200728152010.30701-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200728152010.30701-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Remove_disordered_per-file_request_list_for_thrott?=
 =?utf-8?q?ling_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============0519312474=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0519312474==
Content-Type: multipart/alternative;
 boundary="===============8443456091397757976=="

--===============8443456091397757976==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Remove disordered per-file request list for throttling (rev5)
URL   : https://patchwork.freedesktop.org/series/79600/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8805_full -> Patchwork_18250_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18250_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-mix-vec3-vec3-bvec3 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][1] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-mix-vec3-vec3-bvec3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8805_full and Patchwork_18250_full:

### New Piglit tests (7) ###

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-inverse-mat3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-mix-vec3-vec3-bvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-div-mat4x3-mat4x3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-abs-neg-int-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-not-uvec3-uvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-le-uint-uint-using-if:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-outerproduct-vec2-vec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18250_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][2] -> [FAIL][3] ([i915#1528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl4/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#2242]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-tglb1/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-tglb3/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982]) +13 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl6/igt@kms_color@pipe-b-ctm-negative.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl7/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-kbl1/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl3/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:
    - shard-glk:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-snb:          [PASS][14] -> [TIMEOUT][15] ([i915#1958] / [i915#2119]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#79])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#165])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@nonexisting-fb-interruptible@a-edp1:
    - shard-iclb:         [PASS][20] -> [INCOMPLETE][21] ([i915#2240]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-iclb6/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-iclb7/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.html

  * igt@kms_flip@nonexisting-fb@b-vga1:
    - shard-snb:          [PASS][22] -> [INCOMPLETE][23] ([i915#82])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-snb2/igt@kms_flip@nonexisting-fb@b-vga1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-snb4/igt@kms_flip@nonexisting-fb@b-vga1.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#165] / [i915#78])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-kbl3/igt@kms_flip_tiling@flip-yf-tiled.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl2/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-iclb:         [PASS][26] -> [INCOMPLETE][27] ([i915#123])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#1188])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([fdo#108145] / [i915#265])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109441]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-snb:          [TIMEOUT][36] ([i915#1958] / [i915#2119]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-snb5/igt@gem_ctx_exec@basic-nohangcheck.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-snb2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][38] ([i915#165]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-kbl7/igt@gem_eio@in-flight-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-kbl:          [INCOMPLETE][40] -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-kbl3/igt@gem_eio@kms.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl2/igt@gem_eio@kms.html
    - shard-glk:          [INCOMPLETE][42] -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-glk5/igt@gem_eio@kms.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-glk1/igt@gem_eio@kms.html

  * igt@i915_module_load@reload:
    - shard-apl:          [DMESG-WARN][44] ([i915#1635] / [i915#1982]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl7/igt@i915_module_load@reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-apl6/igt@i915_module_load@reload.html

  * igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a:
    - shard-tglb:         [INCOMPLETE][46] ([i915#2242]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-tglb6/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-tglb3/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][48] ([i915#118] / [i915#95]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51] +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-iclb:         [DMESG-WARN][52] ([i915#128]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-iclb7/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-iclb8/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-skl:          [FAIL][54] ([i915#52] / [i915#54]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][56] ([i915#198]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl5/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@nonexisting-fb-interruptible@b-vga1:
    - shard-snb:          [INCOMPLETE][58] ([i915#82]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-snb5/igt@kms_flip@nonexisting-fb-interruptible@b-vga1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-snb1/igt@kms_flip@nonexisting-fb-interruptible@b-vga1.html

  * igt@kms_flip@nonexisting-fb-interruptible@c-dp1:
    - shard-kbl:          [INCOMPLETE][60] ([i915#2240]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-kbl3/igt@kms_flip@nonexisting-fb-interruptible@c-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl6/igt@kms_flip@nonexisting-fb-interruptible@c-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-skl:          [FAIL][62] ([i915#699]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
    - shard-tglb:         [DMESG-WARN][64] ([i915#1982]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][66] ([i915#1188]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][68] ([i915#155]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-accuracy-50@vecs0:
    - shard-skl:          [DMESG-WARN][72] ([i915#1982]) -> [PASS][73] +8 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl5/igt@perf_pmu@busy-accuracy-50@vecs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl4/igt@perf_pmu@busy-accuracy-50@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][74] ([i915#1930]) -> [TIMEOUT][75] ([i915#1958] / [i915#2119])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][76] ([i915#2021]) -> [WARN][77] ([i915#2036])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-snb:          [SKIP][78] ([fdo#109271]) -> [TIMEOUT][79] ([i915#1958] / [i915#2119])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          [FAIL][80] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][81] ([fdo#108145] / [i915#1982]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][82] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][83] ([i915#1982])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> [FAIL][98] ([i915#1635] / [i915#2110])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl2/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl3/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl3/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl2/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl3/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl4/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl7/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl7/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl8/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl6/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl6/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl8/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl1/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl1/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-apl8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109]) ([i915#1436] / [i915#2110]) -> ([FAIL][110], [FAIL][111]) ([i915#1436] / [i915#1611] / [i915#2029] / [i915#2110])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl9/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl9/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl5/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl8/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl1/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl10/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl3/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl1/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl1/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl4/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl4/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl3/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2240]: https://gitlab.freedesktop.org/drm/intel/issues/2240
  [i915#2242]: https://gitlab.freedesktop.org/drm/intel/issues/2242
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8805 -> Patchwork_18250

  CI-20190529: 20190529
  CI_DRM_8805: 413763255985bf8aac9b7fb979cc8ff27ea5b1c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5749: 2fef871e791ceab7841b899691c443167550173d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18250: 28f508788c900ece73e924fb4b7aae71d7e55f8f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/index.html

--===============8443456091397757976==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Remove disordered per-file req=
uest list for throttling (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/79600/">https://patchwork.freedesktop.org/series/79600/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18250/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18250/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8805_full -&gt; Patchwork_18250_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18250_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_tessellation_shader@execution@built-in-functions@tcs-mix-vec3-=
vec3-bvec3 (NEW):<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18250/pig-icl-1065g7/spec@arb_tessellation_shader@e=
xecution@built-in-functions@tcs-mix-vec3-vec3-bvec3.html">INCOMPLETE</a> +6=
 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8805_full and Patchwork_18=
250_full:</p>
<h3>New Piglit tests (7)</h3>
<ul>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-inverse-ma=
t3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-mix-vec3-v=
ec3-bvec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-=
div-mat4x3-mat4x3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-=
abs-neg-int-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-=
not-uvec3-uvec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-le-uint=
-uint-using-if:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-outerprodu=
ct-vec2-vec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18250_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl4/igt@gem_ctx_persistence@engines-mixed-process@vecs0=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18250/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vec=
s0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1528">i915#1528</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18250/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915=
#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i=
915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-tglb1/igt@kms_atomic_transition@plane-all-transition-fen=
cing@edp-1-pipe-c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18250/shard-tglb3/igt@kms_atomic_transition@plane=
-all-transition-fencing@edp-1-pipe-c.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2242">i915#2242</a>) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-negative:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl6/igt@kms_color@pipe-b-ctm-negative.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/sha=
rd-skl7/igt@kms_color@pipe-b-ctm-negative.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +13 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-kbl1/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18250/shard-kbl3/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18250/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18250/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1958">i915#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2119">i915#2119</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18250/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#=
79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18250/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb-interruptible@a-edp1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-iclb6/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18250/shard-iclb7/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2240">i915#2240</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-snb2/igt@kms_flip@nonexisting-fb@b-vga1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/sh=
ard-snb4/igt@kms_flip@nonexisting-fb@b-vga1.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-yf-tiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-kbl3/igt@kms_flip_tiling@flip-yf-tiled.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/sha=
rd-kbl2/igt@kms_flip_tiling@flip-yf-tiled.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-m=
ultidraw.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18250/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-p=
ri-indfb-multidraw.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/123">i915#123</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl=
9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18250/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18250/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/s=
hard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-snb5/igt@gem_ctx_exec@basic-nohangcheck.html">TIMEOUT</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#19=
58</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2119">i=
915#2119</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18250/shard-snb2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-kbl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_182=
50/shard-kbl2/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8805/shard-kbl3/igt@gem_eio@kms.html">INCOMPLETE</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-kbl2/igt=
@gem_eio@kms.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8805/shard-glk5/igt@gem_eio@kms.html">INCOMPLETE</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-glk1/igt=
@gem_eio@kms.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-apl7/igt@i915_module_load@reload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18250/shard-apl6/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-tglb6/igt@kms_atomic_transition@plane-all-transition@edp=
-1-pipe-a.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2242">i915#2242</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18250/shard-tglb3/igt@kms_atomic_transition@p=
lane-all-transition@edp-1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html">DMESG-=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18250/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180"=
>i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18250/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@all-pipes-torture-move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-iclb7/igt@kms_cursor_legacy@all-pipes-torture-move.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/128">i915#128</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18250/shard-iclb8/igt@kms_cursor_legacy@all-pipes-torture-move=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/52"=
>i915#52</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18250/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl5/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915=
#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18250/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb-interruptible@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-snb5/igt@kms_flip@nonexisting-fb-interruptible@b-vga1.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/82">i915#82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18250/shard-snb1/igt@kms_flip@nonexisting-fb-interruptible@b-=
vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-kbl3/igt@kms_flip@nonexisting-fb-interruptible@c-dp1.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2240">i915#2240</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18250/shard-kbl6/igt@kms_flip@nonexisting-fb-interruptible=
@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling-y:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl6/igt@kms_flip_tiling@flip-changes-tiling-y.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/699">i915=
#699</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18250/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling-y.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-i=
ndfb-draw-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18250/shard-tglb7/igt@kms_frontbuffer_tra=
cking@psr-1p-offscren-pri-indfb-draw-blt.html">PASS</a> +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/=
shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-b-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/155">i915#155</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18250/shard-kbl7/igt@kms_plane@plane-panning-=
bottom-right-suspend-pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/=
shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-50@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl5/igt@perf_pmu@busy-accuracy-50@vecs0.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i91=
5#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18250/shard-skl4/igt@perf_pmu@busy-accuracy-50@vecs0.html">PASS</a> +8=
 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#19=
30</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18250/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2119">i915=
#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin-others@vcs0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2021">i91=
5#2021</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18250/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html">WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2036">i915#=
2036</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18250/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1958">i915#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18250/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic=
.html">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18250/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8805/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_88=
05/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl4/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/sh=
ard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_8805/shard-apl7/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-a=
pl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_8805/shard-apl6/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl6/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_8805/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-apl1/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_8805/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#211=
0</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/637">i91=
5#637</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18250/shard-apl8/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8805/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl9/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8805/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl8/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_88=
05/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl10/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/s=
hard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_8805/shard-skl1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-=
skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_8805/shard-skl4/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8805/shard-skl4/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2110">i915#2110</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_18250/shard-skl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18250/shard-skl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110=
</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8805 -&gt; Patchwork_18250</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8805: 413763255985bf8aac9b7fb979cc8ff27ea5b1c1 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5749: 2fef871e791ceab7841b899691c443167550173d @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18250: 28f508788c900ece73e924fb4b7aae71d7e55f8f @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8443456091397757976==--

--===============0519312474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0519312474==--
