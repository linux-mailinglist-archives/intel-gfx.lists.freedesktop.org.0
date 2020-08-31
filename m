Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA28258496
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 01:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADADB6E430;
	Mon, 31 Aug 2020 23:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 72AD86E42D;
 Mon, 31 Aug 2020 23:58:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 639FBA011C;
 Mon, 31 Aug 2020 23:58:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sam McNally" <sammc@chromium.org>
Date: Mon, 31 Aug 2020 23:58:25 -0000
Message-ID: <159891830537.7426.1682804195379503348@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200727160225.1.I4e95a534de051551cd143e6cb83d4c5a9b0ad1cd@changeid>
In-Reply-To: <20200727160225.1.I4e95a534de051551cd143e6cb83d4c5a9b0ad1cd@changeid>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=5Fmst=3A_Support_remote_i2c_writes?=
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
Content-Type: multipart/mixed; boundary="===============1135868524=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1135868524==
Content-Type: multipart/alternative;
 boundary="===============8966155598170386595=="

--===============8966155598170386595==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp_mst: Support remote i2c writes
URL   : https://patchwork.freedesktop.org/series/81191/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8946_full -> Patchwork_18424_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18424_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#1635] / [i915#2374])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-apl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-apl3/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_eio@in-flight-10ms:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl7/igt@gem_eio@in-flight-10ms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl1/igt@gem_eio@in-flight-10ms.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-apl:          [PASS][5] -> [TIMEOUT][6] ([i915#1635] / [i915#1958])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-apl6/igt@gem_exec_reloc@basic-concurrent0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][7] -> [TIMEOUT][8] ([i915#1958]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-iclb:         [PASS][9] -> [TIMEOUT][10] ([i915#1958])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb4/igt@gem_exec_whisper@basic-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb6/igt@gem_exec_whisper@basic-fds.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-tglb:         [PASS][11] -> [TIMEOUT][12] ([i915#1958])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-tglb7/igt@gem_exec_whisper@basic-fds-priority.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-tglb3/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-kbl:          [PASS][13] -> [TIMEOUT][14] ([i915#1958])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl1/igt@gem_exec_whisper@basic-forked.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl7/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_sync@basic-store-all:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#1635] / [i915#2356])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-apl8/igt@gem_sync@basic-store-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-apl2/igt@gem_sync@basic-store-all.html
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2356])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk4/igt@gem_sync@basic-store-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk9/igt@gem_sync@basic-store-all.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][19] -> [DMESG-FAIL][20] ([i915#118] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk9/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#2122])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-tglb:         [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#123])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#648])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [PASS][37] -> [INCOMPLETE][38] ([i915#1185] / [i915#250])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][43] -> [FAIL][44] ([i915#31])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl4/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts:
    - shard-skl:          [TIMEOUT][45] ([i915#1958]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl9/igt@gem_exec_whisper@basic-contexts.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl2/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [TIMEOUT][47] ([i915#1958]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl2/igt@gem_exec_whisper@basic-queues-forked.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl9/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_sync@basic-store-all:
    - shard-kbl:          [FAIL][51] ([i915#2356]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl7/igt@gem_sync@basic-store-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl1/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][53] ([i915#454]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl10/igt@i915_pm_dc@dc6-psr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock@contexts:
    - shard-apl:          [INCOMPLETE][55] ([i915#1635] / [i915#2278]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-apl3/igt@i915_selftest@mock@contexts.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-apl2/igt@i915_selftest@mock@contexts.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [FAIL][57] ([i915#1119]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk3/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +7 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-skl:          [INCOMPLETE][61] ([i915#300]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-kbl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
    - shard-tglb:         [DMESG-WARN][67] ([i915#1982]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-glk:          [FAIL][69] ([i915#1036]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk3/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk6/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@suspend:
    - shard-skl:          [INCOMPLETE][75] ([i915#198]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl1/igt@kms_psr@suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl7/igt@kms_psr@suspend.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][77] ([i915#1319] / [i915#1958]) -> [TIMEOUT][78] ([i915#1319])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl1/igt@kms_content_protection@atomic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [DMESG-WARN][79] ([i915#1982]) -> [DMESG-FAIL][80] ([i915#1982])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [INCOMPLETE][82] ([i915#155])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2356]: https://gitlab.freedesktop.org/drm/intel/issues/2356
  [i915#2374]: https://gitlab.freedesktop.org/drm/intel/issues/2374
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8946 -> Patchwork_18424

  CI-20190529: 20190529
  CI_DRM_8946: e2a5eec44f19c7732c7114c62410914fda06e106 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5774: 2a5db9f60241383272aeec176e1b97b3f487209f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18424: efe6eb406477be941a39de90fd2181786079bf40 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/index.html

--===============8966155598170386595==
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
<tr><td><b>Series:</b></td><td>drm/dp_mst: Support remote i2c writes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81191/">https://patchwork.freedesktop.org/series/81191/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8946_full -&gt; Patchwork_18424_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18424_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-apl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-apl3/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2374">i915#2374</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl7/igt@gem_eio@in-flight-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl1/igt@gem_eio@in-flight-10ms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-apl6/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb4/igt@gem_exec_whisper@basic-fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb6/igt@gem_exec_whisper@basic-fds.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-tglb7/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-tglb3/igt@gem_exec_whisper@basic-fds-priority.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl1/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl7/igt@gem_exec_whisper@basic-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-apl8/igt@gem_sync@basic-store-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-apl2/igt@gem_sync@basic-store-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2356">i915#2356</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk4/igt@gem_sync@basic-store-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk9/igt@gem_sync@basic-store-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2356">i915#2356</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk9/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/648">i915#648</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/250">i915#250</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl4/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl2/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl9/igt@gem_exec_whisper@basic-contexts.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl2/igt@gem_exec_whisper@basic-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl2/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl9/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl7/igt@gem_sync@basic-store-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2356">i915#2356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl1/igt@gem_sync@basic-store-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl10/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl6/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-apl3/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-apl2/igt@i915_selftest@mock@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk3/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1119">i915#1119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> +7 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-glk3/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1036">i915#1036</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-glk6/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-iclb7/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl1/igt@kms_psr@suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl7/igt@kms_psr@suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl1/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl4/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8946/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18424/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8946 -&gt; Patchwork_18424</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8946: e2a5eec44f19c7732c7114c62410914fda06e106 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5774: 2a5db9f60241383272aeec176e1b97b3f487209f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18424: efe6eb406477be941a39de90fd2181786079bf40 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8966155598170386595==--

--===============1135868524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1135868524==--
