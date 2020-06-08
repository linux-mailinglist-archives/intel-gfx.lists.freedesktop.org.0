Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECE11F1524
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 11:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0C4F6E4A1;
	Mon,  8 Jun 2020 09:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E05CC6E073;
 Mon,  8 Jun 2020 09:16:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8D14A47DA;
 Mon,  8 Jun 2020 09:16:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Le" <jason.v.le@intel.com>
Date: Mon, 08 Jun 2020 09:16:00 -0000
Message-ID: <159160776085.14463.12185795708270224212@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200608065635.11652-1-jason.v.le@intel.com>
In-Reply-To: <20200608065635.11652-1-jason.v.le@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Avoid_PSR_and_FBC_features_concurently=2E?=
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

Series: drm/i915/display: Avoid PSR and FBC features concurently.
URL   : https://patchwork.freedesktop.org/series/78107/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8599_full -> Patchwork_17904_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17904_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-skl2/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][5] -> [DMESG-FAIL][6] ([i915#118] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-skl2/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-hsw:          [PASS][9] -> [DMESG-WARN][10] ([i915#128])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-hsw1/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-hsw2/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109642] / [fdo#111068])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@suspend:
    - shard-iclb:         [PASS][17] -> [INCOMPLETE][18] ([i915#1185])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-iclb3/igt@kms_psr@suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-iclb3/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [DMESG-WARN][21] ([i915#118] / [i915#95]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-glk1/igt@gem_exec_schedule@smoketest-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-glk8/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_pread@display:
    - shard-hsw:          [INCOMPLETE][23] ([i915#61]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-hsw4/igt@gem_pread@display.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-hsw7/igt@gem_pread@display.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][25] ([i915#1436] / [i915#716]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-apl7/igt@gen9_exec_parse@allowed-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-apl2/igt@gen9_exec_parse@allowed-all.html
    - shard-glk:          [DMESG-WARN][27] ([i915#1436] / [i915#716]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-skl:          [DMESG-WARN][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-skl4/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-skl5/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_atomic@test-only:
    - shard-apl:          [DMESG-WARN][31] ([i915#95]) -> [PASS][32] +45 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-apl1/igt@kms_atomic@test-only.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-apl4/igt@kms_atomic@test-only.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-kbl:          [DMESG-FAIL][33] ([i915#54] / [i915#95]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][35] ([i915#57]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
    - shard-apl:          [DMESG-FAIL][37] ([i915#54] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-apl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-apl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-kbl:          [FAIL][39] ([i915#64]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-kbl6/igt@kms_fbcon_fbt@fbc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-kbl1/igt@kms_fbcon_fbt@fbc.html
    - shard-apl:          [FAIL][41] ([i915#1525]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-apl2/igt@kms_fbcon_fbt@fbc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-apl8/igt@kms_fbcon_fbt@fbc.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-glk:          [INCOMPLETE][47] ([i915#58] / [k.org#198133]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][49] ([i915#93] / [i915#95]) -> [PASS][50] +46 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - shard-apl:          [DMESG-FAIL][55] ([i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-apl4/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
    - shard-kbl:          [DMESG-FAIL][57] ([i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-kbl4/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][59] ([i915#180] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +11 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-skl8/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-skl6/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][65] ([fdo#109642] / [fdo#111068]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][69] ([i915#1542]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-iclb1/igt@perf@blocking-parameterized.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-iclb4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][71] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][72] ([i915#1319] / [i915#1635])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-apl2/igt@kms_content_protection@atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][73] ([i915#1319] / [i915#1958]) -> [TIMEOUT][74] ([i915#1319]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-kbl4/igt@kms_content_protection@atomic-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-kbl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][75] ([i915#1319]) -> [FAIL][76] ([fdo#110321] / [fdo#110336])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-kbl2/igt@kms_content_protection@legacy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-kbl2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][77] ([i915#1319]) -> [FAIL][78] ([fdo#110321])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8599/shard-apl8/igt@kms_content_protection@lic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/shard-apl7/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8599 -> Patchwork_17904

  CI-20190529: 20190529
  CI_DRM_8599: 41ca9ea98b74c926c923e84931b9b4a4c3955e08 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5697: 5b8be04285ded1201fac5a2c2b50a7d70fa332d8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17904: dee7c897c6ed8262b5655c110352e85c7e13e8c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17904/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
