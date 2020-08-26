Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8014253850
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 21:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A6356E362;
	Wed, 26 Aug 2020 19:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 846F66E362;
 Wed, 26 Aug 2020 19:32:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77A04A3ECB;
 Wed, 26 Aug 2020 19:32:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Oleksandr Andrushchenko" <andr2000@gmail.com>
Date: Wed, 26 Aug 2020 19:32:50 -0000
Message-ID: <159847037046.21252.12969321614378055817@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200826140027.11728-1-andr2000@gmail.com>
In-Reply-To: <20200826140027.11728-1-andr2000@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/xen-front=3A_Add_support_for_EDID_based_configuration?=
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
Content-Type: multipart/mixed; boundary="===============1007580299=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1007580299==
Content-Type: multipart/alternative;
 boundary="===============6050766162568777185=="

--===============6050766162568777185==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xen-front: Add support for EDID based configuration
URL   : https://patchwork.freedesktop.org/series/81068/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8928_full -> Patchwork_18409_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18409_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-kbl:          [PASS][3] -> [TIMEOUT][4] ([i915#1958]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-kbl1/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-kbl4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-apl:          [PASS][5] -> [TIMEOUT][6] ([i915#1635] / [i915#1958])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-apl3/igt@gem_exec_whisper@basic-contexts-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-apl2/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][7] -> [TIMEOUT][8] ([i915#1958]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk8/igt@gem_exec_whisper@basic-fds-priority.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk6/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-iclb:         [PASS][9] -> [TIMEOUT][10] ([i915#1958])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb3/igt@gem_exec_whisper@basic-forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb3/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1436] / [i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@perf@request:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1823])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb3/igt@i915_selftest@perf@request.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb3/igt@i915_selftest@perf@request.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][17] -> [DMESG-FAIL][18] ([i915#118] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-hsw6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-hsw6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +9 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk5/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl5/igt@kms_hdr@bpc-switch.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#53])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#899])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk9/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk9/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-accuracy-idle:
    - shard-tglb:         [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb1/igt@kms_vblank@pipe-d-accuracy-idle.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb5/igt@kms_vblank@pipe-d-accuracy-idle.html

  
#### Possible fixes ####

  * igt@gem_eio@kms:
    - shard-hsw:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-hsw1/igt@gem_eio@kms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-hsw8/igt@gem_eio@kms.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [TIMEOUT][43] ([i915#1958]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-iclb:         [TIMEOUT][45] ([i915#1958]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb6/igt@gem_exec_whisper@basic-fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb8/igt@gem_exec_whisper@basic-fds.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-apl:          [TIMEOUT][47] ([i915#1635] / [i915#1958]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-apl8/igt@gem_exec_whisper@basic-forked.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-apl3/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_sync@basic-store-all:
    - shard-apl:          [FAIL][49] ([i915#1635] / [i915#2356]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-apl4/igt@gem_sync@basic-store-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-apl2/igt@gem_sync@basic-store-all.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][51] ([i915#118] / [i915#95]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl6/igt@kms_color@pipe-c-ctm-0-5.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][59] ([i915#198]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1:
    - shard-glk:          [FAIL][61] ([i915#407]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk5/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-kbl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-iclb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +7 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-glk:          [FAIL][71] ([i915#53]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][75] ([fdo#109642] / [fdo#111068]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb1/igt@kms_psr@psr2_basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][79] ([i915#1542]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl5/igt@perf@polling.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl1/igt@perf@polling.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [FAIL][81] ([i915#1542]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb8/igt@perf@polling-parameterized.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb5/igt@perf@polling-parameterized.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-tglb:         [FAIL][83] ([i915#1755]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb1/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb2/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [TIMEOUT][85] ([i915#1958]) -> [DMESG-WARN][86] ([i915#118] / [i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][87] ([fdo#109349]) -> [DMESG-WARN][88] ([i915#1226])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][89] ([i915#1542]) -> [DMESG-FAIL][90] ([i915#1982])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl9/igt@perf@polling-parameterized.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl6/igt@perf@polling-parameterized.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2356]: https://gitlab.freedesktop.org/drm/intel/issues/2356
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8928 -> Patchwork_18409

  CI-20190529: 20190529
  CI_DRM_8928: 58f2939dbc6d2e11838ad8ef87250fcd1e3408ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5771: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18409: 83cae776fccb664604d3dc6f0b4a0ba0c5db22e0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/index.html

--===============6050766162568777185==
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
<tr><td><b>Series:</b></td><td>drm/xen-front: Add support for EDID based configuration</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81068/">https://patchwork.freedesktop.org/series/81068/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8928_full -&gt; Patchwork_18409_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18409_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-kbl1/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-kbl4/igt@gem_exec_reloc@basic-concurrent0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-apl3/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-apl2/igt@gem_exec_whisper@basic-contexts-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk8/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk6/igt@gem_exec_whisper@basic-fds-priority.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb3/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb3/igt@gem_exec_whisper@basic-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl6/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@request:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb3/igt@i915_selftest@perf@request.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb3/igt@i915_selftest@perf@request.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1823">i915#1823</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-hsw6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-hsw6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk5/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl5/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-none:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-none.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-none.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/899">i915#899</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb5/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk9/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk9/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-accuracy-idle:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb1/igt@kms_vblank@pipe-d-accuracy-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb5/igt@kms_vblank@pipe-d-accuracy-idle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-hsw1/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-hsw8/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb6/igt@gem_exec_whisper@basic-fds.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb8/igt@gem_exec_whisper@basic-fds.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-apl8/igt@gem_exec_whisper@basic-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-apl3/igt@gem_exec_whisper@basic-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-apl4/igt@gem_sync@basic-store-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2356">i915#2356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-apl2/igt@gem_sync@basic-store-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl6/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/407">i915#407</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk5/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb5/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb1/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl5/igt@perf@polling.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl1/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb8/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb5/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-tglb1/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1755">i915#1755</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-tglb2/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18409/shard-skl6/igt@perf@polling-parameterized.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8928 -&gt; Patchwork_18409</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8928: 58f2939dbc6d2e11838ad8ef87250fcd1e3408ee @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5771: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18409: 83cae776fccb664604d3dc6f0b4a0ba0c5db22e0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6050766162568777185==--

--===============1007580299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1007580299==--
